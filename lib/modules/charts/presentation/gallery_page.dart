import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/design/tokens.dart';
import '../../../charts/core/chart_models.dart';
import '../../../charts/widgets/app_bar_chart.dart';
import '../../../charts/widgets/app_line_chart.dart';
import '../../../charts/widgets/app_heatmap.dart';

// Demo data providers
final stackedBarProvider = Provider<List<Series>>((ref) {
  final days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri'];
  List<DataPoint> mkSeries(List<num> ys) =>
      List.generate(days.length, (i) => DataPoint(x: days[i], y: ys[i]));
  return [
    Series(
      name: 'Series A',
      color: AppTokens.chartColors[0],
      data: mkSeries([5, 7, 6, 9, 8]),
    ),
    Series(
      name: 'Series B',
      color: AppTokens.chartColors[1],
      data: mkSeries([3, 4, 5, 6, 7]),
    ),
    Series(
      name: 'Series C',
      color: AppTokens.chartColors[2],
      data: mkSeries([2, 3, 4, 3, 2]),
    ),
  ];
});

final groupedBarProvider = Provider<List<Series>>((ref) {
  final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'];
  List<DataPoint> mk(List<num> ys) =>
      List.generate(months.length, (i) => DataPoint(x: months[i], y: ys[i]));
  return [
    Series(
      name: 'Product X',
      color: AppTokens.chartColors[0],
      data: mk([10, 12, 9, 14, 16, 18]),
    ),
    Series(
      name: 'Product Y',
      color: AppTokens.chartColors[1],
      data: mk([8, 9, 11, 10, 12, 15]),
    ),
    Series(
      name: 'Product Z',
      color: AppTokens.chartColors[2],
      data: mk([6, 7, 8, 9, 10, 12]),
    ),
  ];
});

final multiLineProvider = Provider<List<Series>>((ref) {
  final months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
  List<DataPoint> mk(List<num> ys) =>
      List.generate(months.length, (i) => DataPoint(x: months[i], y: ys[i]));
  return [
    Series(
      name: 'North',
      color: AppTokens.chartColors[0],
      data: mk([5, 6, 7, 8, 7, 8, 9, 8, 7, 6, 5, 6]),
    ),
    Series(
      name: 'Central',
      color: AppTokens.chartColors[1],
      data: mk([4, 5, 6, 6, 7, 7, 8, 8, 7, 6, 5, 5]),
    ),
    Series(
      name: 'South',
      color: AppTokens.chartColors[2],
      data: mk([6, 6, 7, 7, 8, 9, 9, 10, 9, 8, 7, 7]),
    ),
  ];
});

final heatmapProvider = Provider<List<HeatCell>>((ref) {
  // 5 machines x 3 shifts
  final machines = 5;
  final shifts = 3;
  final List<HeatCell> cells = [];
  for (int y = 0; y < machines; y++) {
    for (int x = 0; x < shifts; x++) {
      cells.add(
        HeatCell(
          x: x,
          y: y,
          value: (y + 1) * (x + 2) + (x * 0.5),
          label: 'M${y + 1}-S${x + 1}',
        ),
      );
    }
  }
  return cells;
});

class ChartsGalleryPage extends ConsumerStatefulWidget {
  const ChartsGalleryPage({super.key});

  @override
  ConsumerState<ChartsGalleryPage> createState() => _ChartsGalleryPageState();
}

class _ChartsGalleryPageState extends ConsumerState<ChartsGalleryPage> {
  bool showTooltips = true;
  bool showLegend = true; // Legend is conceptual; we render a manual legend.
  final Set<String> hiddenSeries = {};

  @override
  Widget build(BuildContext context) {
    final stacked = _applyVisibility(ref.watch(stackedBarProvider));
    final grouped = _applyVisibility(ref.watch(groupedBarProvider));
    final lines = _applyVisibility(ref.watch(multiLineProvider));
    final heat = ref.watch(heatmapProvider);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          children: [
            const Text(
              'Charts Gallery',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Row(
              children: [
                const Text('Tooltips'),
                Switch(
                  value: showTooltips,
                  onChanged: (v) => setState(() => showTooltips = v),
                ),
                const SizedBox(width: 16),
                const Text('Legend'),
                Switch(
                  value: showLegend,
                  onChanged: (v) => setState(() => showLegend = v),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),

        _card(
          title: 'Stacked Bar (Mon–Fri × 3 series)',
          legend: showLegend ? _legend(ref.watch(stackedBarProvider)) : null,
          child: AppBarChart(
            series: stacked,
            xAxis: const AxisFormat(title: 'Day'),
            yAxis: const AxisFormat(title: 'Value'),
            stacked: true,
            tooltip: TooltipConfig(enabled: showTooltips),
          ),
        ),

        _card(
          title: 'Grouped Bar (3 series × months)',
          legend: showLegend ? _legend(ref.watch(groupedBarProvider)) : null,
          child: AppBarChart(
            series: grouped,
            xAxis: const AxisFormat(title: 'Month'),
            yAxis: const AxisFormat(title: 'Value'),
            grouped: true,
            tooltip: TooltipConfig(enabled: showTooltips),
          ),
        ),

        _card(
          title: 'Multi‑line time series (3 regions, monthly)',
          legend: showLegend ? _legend(ref.watch(multiLineProvider)) : null,
          child: AppLineChart(
            series: lines,
            xAxis: const AxisFormat(title: 'Month'),
            yAxis: const AxisFormat(title: 'Value'),
            showPoints: true,
            smoothLine: true,
            fillArea: true,
            tooltip: TooltipConfig(enabled: showTooltips),
          ),
        ),

        _card(
          title: 'Heatmap (Machines × Shifts 5×3)',
          child: AppHeatmap(
            cells: heat,
            xAxis: const AxisFormat(title: 'Shift'),
            yAxis: const AxisFormat(title: 'Machine'),
            colorStops: const [
              HeatScaleStop(value: 0.0, color: Color(0xFFECEFF1)),
              HeatScaleStop(value: 0.5, color: Color(0xFF90CAF9)),
              HeatScaleStop(value: 1.0, color: Color(0xFF1976D2)),
            ],
            tooltip: TooltipConfig(enabled: showTooltips),
          ),
        ),
      ],
    );
  }

  List<Series> _applyVisibility(List<Series> input) {
    return [
      for (final s in input)
        if (!hiddenSeries.contains(s.name)) s,
    ];
  }

  Widget _legend(List<Series> series) {
    return Wrap(
      spacing: AppTokens.legendGap,
      runSpacing: 8,
      children: [
        for (final s in series)
          InkWell(
            borderRadius: BorderRadius.circular(6),
            onTap: () => setState(() {
              if (hiddenSeries.contains(s.name)) {
                hiddenSeries.remove(s.name);
              } else {
                hiddenSeries.add(s.name);
              }
            }),
            child: Opacity(
              opacity: hiddenSeries.contains(s.name) ? 0.35 : 1,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 12,
                    height: 12,
                    margin: const EdgeInsets.only(right: 6),
                    decoration: BoxDecoration(
                      color:
                          s.color ??
                          AppTokens.chartColors[series.indexOf(s) %
                              AppTokens.chartColors.length],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  Text(s.name, style: AppTokens.chartLegend),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _card({required String title, required Widget child, Widget? legend}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: AppTokens.chartTitle),
            if (legend != null) ...[const SizedBox(height: 8), legend],
            const SizedBox(height: 12),
            SizedBox(height: 260, child: child),
          ],
        ),
      ),
    );
  }
}
