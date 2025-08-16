import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/chart_models.dart';
import '../core/chart_registry.dart';

class AppBarChart extends ConsumerWidget {
  const AppBarChart({
    super.key,
    required this.series,
    required this.xAxis,
    required this.yAxis,
    this.stacked = false,
    this.grouped = false,
    this.tooltip,
    this.animation,
    this.adapterName,
  });

  final List<Series> series;
  final AxisFormat xAxis;
  final AxisFormat yAxis;
  final bool stacked;
  final bool grouped;
  final TooltipConfig? tooltip;
  final AnimationConfig? animation;
  final String? adapterName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final factory = ref.watch(activeChartFactoryProvider(adapterName));

    final adapter = factory.createBarChart(
      series: series,
      xAxis: xAxis,
      yAxis: yAxis,
      stacked: stacked,
      grouped: grouped,
      tooltip: tooltip,
      animation: animation,
    );

    return adapter.build(context);
  }
}