import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../charts/core/chart_models.dart';
import '../../../charts/widgets/app_line_chart.dart';
import '../../../core/design/tokens.dart';
import '../domain/models.dart';
import 'state.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  bool showFilters = true;

  @override
  Widget build(BuildContext context) {
    final kpisAsync = ref.watch(kpisProvider);
    final selectedId = ref.watch(selectedKpiIdProvider);
    final seriesAsync = ref.watch(kpiSeriesProvider);

    return Row(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              kpisAsync.when(
                loading: () => const LinearProgressIndicator(),
                error: (e, _) => Text('Failed to load KPIs: $e'),
                data: (kpis) => _kpiTabs(kpis, selectedId),
              ),
              const SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: seriesAsync.when(
                    loading: () => const SizedBox(
                      height: 260,
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    error: (e, st) => SizedBox(
                      height: 260,
                      child: Center(child: Text('Failed: $e')),
                    ),
                    data: (series) => SizedBox(
                      height: 300,
                      child: AppLineChart(
                        series: [series],
                        xAxis: const AxisFormat(title: 'Time'),
                        yAxis: const AxisFormat(title: 'Value'),
                        showPoints: true,
                        smoothLine: true,
                        fillArea: true,
                        tooltip: const TooltipConfig(enabled: true),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        _filtersPane(),
      ],
    );
  }

  Widget _kpiTabs(List<KpiItem> kpis, String selectedId) => Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (final k in kpis)
            ChoiceChip(
              label: Text(k.label),
              selected: k.id == selectedId,
              onSelected: (_) =>
                  ref.read(selectedKpiIdProvider.notifier).state = k.id,
              selectedColor: AppTokens.chartColors[0].withValues(alpha: 0.15),
            ),
        ],
      ),
    ),
  );

  Widget _filtersPane() => AnimatedContainer(
    duration: const Duration(milliseconds: 200),
    width: showFilters ? 320 : 40,
    child: Card(
      margin: const EdgeInsets.only(right: 16, top: 16, bottom: 16),
      child: Column(
        children: [
          ListTile(
            title: const Text('Filters'),
            trailing: IconButton(
              icon: Icon(
                showFilters ? Icons.chevron_right : Icons.chevron_left,
              ),
              onPressed: () => setState(() => showFilters = !showFilters),
            ),
          ),
          if (!showFilters) const Spacer(),
          if (showFilters) Expanded(child: _filterForm()),
        ],
      ),
    ),
  );

  Widget _filterForm() {
    final filters = ref.watch(kpiFiltersProvider);
    final ctrl = ref.read(kpiFiltersProvider.notifier);

    final plants = ref.watch(plantsProvider);
    final segments = ref.watch(segmentsProvider);
    final lines = ref.watch(linesProvider);
    final machines = ref.watch(machinesProvider);

    Future<void> pickRange() async {
      final picked = await showDateRangePicker(
        context: context,
        firstDate: DateTime(2020),
        lastDate: DateTime.now().add(const Duration(days: 365)),
        initialDateRange: filters.dateRange,
      );
      if (picked != null) ctrl.updateDateRange(picked);
    }

    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        const Text('Date Range'),
        const SizedBox(height: 6),
        OutlinedButton(
          onPressed: pickRange,
          child: Text(
            '${filters.dateRange.start.toString().substring(0, 10)}  →  ${filters.dateRange.end.toString().substring(0, 10)}',
          ),
        ),
        const SizedBox(height: 12),

        const Text('Plant'),
        const SizedBox(height: 6),
        plants.when(
          loading: () => const LinearProgressIndicator(minHeight: 2),
          error: (e, _) => Text('Error: $e'),
          data: (options) => _dropdown(
            value: filters.plant,
            items: options,
            onChanged: ctrl.updatePlant,
          ),
        ),
        const SizedBox(height: 12),

        const Text('Segment'),
        const SizedBox(height: 6),
        segments.when(
          loading: () => const LinearProgressIndicator(minHeight: 2),
          error: (e, _) => Text('Error: $e'),
          data: (options) => _dropdown(
            value: filters.segment,
            items: options,
            onChanged: ctrl.updateSegment,
          ),
        ),
        const SizedBox(height: 12),

        const Text('Line'),
        const SizedBox(height: 6),
        lines.when(
          loading: () => const LinearProgressIndicator(minHeight: 2),
          error: (e, _) => Text('Error: $e'),
          data: (options) => _dropdown(
            value: filters.line,
            items: options,
            onChanged: ctrl.updateLine,
          ),
        ),
        const SizedBox(height: 12),

        const Text('Machine'),
        const SizedBox(height: 6),
        machines.when(
          loading: () => const LinearProgressIndicator(minHeight: 2),
          error: (e, _) => Text('Error: $e'),
          data: (options) => _dropdown(
            value: filters.machine,
            items: options,
            onChanged: ctrl.updateMachine,
          ),
        ),
        const SizedBox(height: 16),

        FilledButton(
          onPressed: () {
            ref.invalidate(kpiSeriesProvider);
          },
          child: const Text('Apply'),
        ),
      ],
    );
  }

  Widget _dropdown({
    required String value,
    required List<String> items,
    required void Function(String) onChanged,
  }) => DropdownButtonFormField<String>(
    initialValue: value.isEmpty ? null : value,
    items: [for (final i in items) DropdownMenuItem(value: i, child: Text(i))],
    onChanged: (v) {
      if (v != null) onChanged(v);
    },
    isExpanded: true,
  );
}
