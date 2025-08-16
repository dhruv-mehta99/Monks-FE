import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:mfg_dashboard/charts/adapters/default_chart_factory.dart';
import 'package:mfg_dashboard/charts/core/chart_models.dart';
import 'package:mfg_dashboard/charts/core/chart_registry.dart';
import 'package:mfg_dashboard/charts/widgets/app_bar_chart.dart';
import 'package:mfg_dashboard/charts/widgets/app_line_chart.dart';
import 'package:mfg_dashboard/charts/widgets/app_heatmap.dart';

void main() {
  final registryOverride = chartRegistryProvider.overrideWithValue(
    ChartRegistry(defaultFactory: DefaultChartFactory()),
  );

  testWidgets('AppBarChart renders with mock series', (tester) async {
    final series = [
      Series(name: 'A', data: [DataPoint(x: 'Jan', y: 1), DataPoint(x: 'Feb', y: 2)]),
      Series(name: 'B', data: [DataPoint(x: 'Jan', y: 3), DataPoint(x: 'Feb', y: 4)]),
    ];

    await tester.pumpWidget(ProviderScope(
      overrides: [registryOverride],
      child: MaterialApp(home: Scaffold(body: AppBarChart(
        series: series,
        xAxis: const AxisFormat(title: 'X'),
        yAxis: const AxisFormat(title: 'Y'),
      ))),
    ));

    await tester.pumpAndSettle();
    expect(find.byType(AppBarChart), findsOneWidget);
  });

  testWidgets('AppLineChart renders with mock series', (tester) async {
    final series = [
      Series(name: 'A', data: [DataPoint(x: 'Jan', y: 1), DataPoint(x: 'Feb', y: 2)]),
      Series(name: 'B', data: [DataPoint(x: 'Jan', y: 3), DataPoint(x: 'Feb', y: 4)]),
    ];

    await tester.pumpWidget(ProviderScope(
      overrides: [registryOverride],
      child: MaterialApp(home: Scaffold(body: AppLineChart(
        series: series,
        xAxis: const AxisFormat(title: 'X'),
        yAxis: const AxisFormat(title: 'Y'),
      ))),
    ));

    await tester.pumpAndSettle();
    expect(find.byType(AppLineChart), findsOneWidget);
  });

  testWidgets('AppHeatmap renders with mock cells', (tester) async {
    final cells = [
      HeatCell(x: 0, y: 0, value: 1),
      HeatCell(x: 1, y: 0, value: 2),
      HeatCell(x: 0, y: 1, value: 3),
      HeatCell(x: 1, y: 1, value: 4),
    ];

    await tester.pumpWidget(ProviderScope(
      overrides: [registryOverride],
      child: MaterialApp(home: Scaffold(body: AppHeatmap(
        cells: cells,
        xAxis: const AxisFormat(title: 'X'),
        yAxis: const AxisFormat(title: 'Y'),
        colorStops: const [
          HeatScaleStop(value: 0.0, color: Color(0xFFECEFF1)),
          HeatScaleStop(value: 1.0, color: Color(0xFF1976D2)),
        ],
      ))),
    ));

    await tester.pumpAndSettle();
    expect(find.byType(AppHeatmap), findsOneWidget);
  });
}
