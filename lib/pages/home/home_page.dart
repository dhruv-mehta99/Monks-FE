import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/shared_widgets/shared_widgets.dart';
import '../../models/models.dart';
import '../../services/services.dart';

enum KpiType { output, availability }

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  KpiType _selectedKpi = KpiType.output;

  void _selectKpi(KpiType kpi) {
    setState(() {
      _selectedKpi = kpi;
    });
  }

  @override
  Widget build(BuildContext context) {
    final filterState = ref.watch(filterNotifierProvider);
    final outputDataAsync = ref.watch(outputTimeseriesProvider(filterState));
    final availabilityDataAsync = ref.watch(
      availabilityTimeseriesProvider(filterState),
    );

    return Scaffold(
      body: Column(
        children: [
          // Top Filter Bar (Grafana-style)
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).dividerColor.withOpacity(0.2),
                  width: 1,
                ),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Machine Selection Filters
                  Row(
                    children: [
                      Text(
                        'Filters:',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.color?.withOpacity(0.9),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 12),
                      MachineFilter(
                        currentFilters: filterState,
                        onFiltersChanged: (newFilters) {
                          ref
                              .read(filterNotifierProvider.notifier)
                              .updateFilters(newFilters);
                        },
                        compact: true,
                      ),
                    ],
                  ),

                  const SizedBox(width: 32),

                  // Time Range Filter
                  TimeRangeFilter(
                    currentRange: filterState.dateRange,
                    onRangeChanged: (newRange) {
                      ref
                          .read(filterNotifierProvider.notifier)
                          .updateDateRange(newRange);
                    },
                    compact: true,
                  ),
                ],
              ),
            ),
          ),

          // Main Content Area
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Manufacturing Dashboard',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 24),

                  // Charts Section - Only show when machine is selected
                  if (filterState.machineId != null) ...[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // KPI Tabs
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              child: Row(
                                children: [
                                  _buildKpiTab(
                                    label: 'Output KPI',
                                    isSelected: _selectedKpi == KpiType.output,
                                    onTap: () => _selectKpi(KpiType.output),
                                  ),
                                  const SizedBox(width: 16),
                                  _buildKpiTab(
                                    label: 'Availability KPI',
                                    isSelected:
                                        _selectedKpi == KpiType.availability,
                                    onTap: () =>
                                        _selectKpi(KpiType.availability),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),

                          // Single Chart based on selected KPI
                          Expanded(
                            child: _buildSelectedKpiChart(filterState, ref),
                          ),
                        ],
                      ),
                    ),
                  ] else ...[
                    // Show message when no machine is selected
                    Expanded(
                      child: Center(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.settings,
                                  size: 64,
                                  color: Colors.grey[400],
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'Select a Machine to View Charts',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall,
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Please select a machine from the filters above to display KPI charts',
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(color: Colors.grey[600]),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to get machine name for chart titles
  String _getMachineName(FilterState filters, WidgetRef ref) {
    if (filters.machineId == null) return '';

    // Try to get machine name from the machines provider
    final machinesAsync = ref.watch(
      machinesByUnitProvider(filters.unitId ?? '', lineId: filters.lineId),
    );

    return machinesAsync.when(
      data: (machines) {
        final machine = machines.firstWhere(
          (m) => m.machineId == filters.machineId,
          orElse: () => Machine(
            machineId: filters.machineId!,
            machineName: 'Unknown Machine',
            machineType: '',
            machineLocation: '',
            commissionedOn: DateTime.now(),
            lastMaintenanceDate: DateTime.now(),
            status: MachineStatus.active,
            lineId: filters.lineId ?? '',
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          ),
        );
        return machine.machineName;
      },
      loading: () => 'Loading...',
      error: (_, __) => 'Unknown Machine',
    );
  }

  // Build KPI tab widget
  Widget _buildKpiTab({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) => GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Theme.of(context).primaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected
              ? Theme.of(context).primaryColor
              : Theme.of(context).dividerColor.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected
              ? Colors.white
              : Theme.of(context).textTheme.bodyMedium?.color,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          fontSize: 14,
        ),
      ),
    ),
  );

  // Build the selected KPI chart
  Widget _buildSelectedKpiChart(FilterState filterState, WidgetRef ref) {
    final outputDataAsync = ref.watch(outputTimeseriesProvider(filterState));
    final availabilityDataAsync = ref.watch(
      availabilityTimeseriesProvider(filterState),
    );

    switch (_selectedKpi) {
      case KpiType.output:
        return outputDataAsync.when(
          data: (data) => KpiLineChart(
            title: 'Output Over Time - ${_getMachineName(filterState, ref)}',
            data: data.series,
            yAxisLabel: 'Output Quantity',
            showLegend: true,
          ),
          loading: () => const Card(
            child: SizedBox.expand(
              child: Center(child: CircularProgressIndicator()),
            ),
          ),
          error: (error, stack) => Card(
            child: SizedBox.expand(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error_outline, size: 48, color: Colors.red[400]),
                    const SizedBox(height: 16),
                    Text(
                      'Error loading data',
                      style: TextStyle(fontSize: 16, color: Colors.red[600]),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      error.toString(),
                      style: TextStyle(fontSize: 14, color: Colors.red[500]),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );

      case KpiType.availability:
        return availabilityDataAsync.when(
          data: (data) => KpiLineChart(
            title:
                'Machine Availability Over Time - ${_getMachineName(filterState, ref)}',
            data: data.series
                .map(
                  (series) => OutputTimeseries(
                    machineId: series.machineId,
                    data: series.data
                        .map(
                          (point) => OutputDataPoint(
                            timestamp: point.timestamp,
                            value: (point.availabilityRatio * 100)
                                .toDouble(), // Convert ratio to percentage
                          ),
                        )
                        .toList(),
                  ),
                )
                .toList(),
            yAxisLabel: 'Availability %',
            showLegend: true,
            colors: const [Colors.green, Colors.blue, Colors.orange],
          ),
          loading: () => const Card(
            child: SizedBox.expand(
              child: Center(child: CircularProgressIndicator()),
            ),
          ),
          error: (error, stack) => Card(
            child: SizedBox.expand(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error_outline, size: 48, color: Colors.red[400]),
                    const SizedBox(height: 16),
                    Text(
                      'Error loading data',
                      style: TextStyle(fontSize: 16, color: Colors.red[600]),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      error.toString(),
                      style: TextStyle(fontSize: 14, color: Colors.red[500]),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
    }
  }
}
