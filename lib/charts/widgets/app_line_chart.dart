import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/chart_models.dart';
import '../core/chart_registry.dart';

class AppLineChart extends ConsumerWidget {
  const AppLineChart({
    super.key,
    required this.series,
    required this.xAxis,
    required this.yAxis,
    this.showPoints = true,
    this.smoothLine = false,
    this.fillArea = false,
    this.tooltip,
    this.animation,
    this.adapterName,
  });

  final List<Series> series;
  final AxisFormat xAxis;
  final AxisFormat yAxis;
  final bool showPoints;
  final bool smoothLine;
  final bool fillArea;
  final TooltipConfig? tooltip;
  final AnimationConfig? animation;
  final String? adapterName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final factory = ref.watch(activeChartFactoryProvider(adapterName));

    final adapter = factory.createLineChart(
      series: series,
      xAxis: xAxis,
      yAxis: yAxis,
      showPoints: showPoints,
      smoothLine: smoothLine,
      fillArea: fillArea,
      tooltip: tooltip,
      animation: animation,
    );

    return adapter.build(context);
  }
}
