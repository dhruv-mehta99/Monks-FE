import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/chart_models.dart';
import '../core/chart_registry.dart';

class AppHeatmap extends ConsumerWidget {
  const AppHeatmap({
    super.key,
    required this.cells,
    required this.xAxis,
    required this.yAxis,
    required this.colorStops,
    this.tooltip,
    this.animation,
    this.adapterName,
  });

  final List<HeatCell> cells;
  final AxisFormat xAxis;
  final AxisFormat yAxis;
  final List<HeatScaleStop> colorStops;
  final TooltipConfig? tooltip;
  final AnimationConfig? animation;
  final String? adapterName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final factory = ref.watch(activeChartFactoryProvider(adapterName));

    final adapter = factory.createHeatmap(
      cells: cells,
      xAxis: xAxis,
      yAxis: yAxis,
      colorStops: colorStops,
      tooltip: tooltip,
      animation: animation,
    );

    return adapter.build(context);
  }
}
