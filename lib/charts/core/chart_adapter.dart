import 'package:flutter/material.dart';
import 'chart_models.dart';

/// Base chart adapter interface
abstract class ChartAdapter {
  Widget build(BuildContext context);
}

/// Bar chart adapter interface
abstract class BarChartAdapter implements ChartAdapter {
  BarChartAdapter({
    required this.series,
    required this.xAxis,
    required this.yAxis,
    this.stacked = false,
    this.grouped = false,
    this.tooltip,
    this.animation,
  });

  final List<Series> series;
  final AxisFormat xAxis;
  final AxisFormat yAxis;
  final bool stacked;
  final bool grouped;
  final TooltipConfig? tooltip;
  final AnimationConfig? animation;
}

/// Line chart adapter interface
abstract class LineChartAdapter implements ChartAdapter {
  LineChartAdapter({
    required this.series,
    required this.xAxis,
    required this.yAxis,
    this.showPoints = true,
    this.smoothLine = false,
    this.fillArea = false,
    this.tooltip,
    this.animation,
  });

  final List<Series> series;
  final AxisFormat xAxis;
  final AxisFormat yAxis;
  final bool showPoints;
  final bool smoothLine;
  final bool fillArea;
  final TooltipConfig? tooltip;
  final AnimationConfig? animation;
}

/// Heatmap chart adapter interface
abstract class HeatmapAdapter implements ChartAdapter {
  HeatmapAdapter({
    required this.cells,
    required this.xAxis,
    required this.yAxis,
    required this.colorStops,
    this.tooltip,
    this.animation,
  });

  final List<HeatCell> cells;
  final AxisFormat xAxis;
  final AxisFormat yAxis;
  final List<HeatScaleStop> colorStops;
  final TooltipConfig? tooltip;
  final AnimationConfig? animation;
}

/// Chart adapter factory interface
abstract class ChartAdapterFactory {
  BarChartAdapter createBarChart({
    required List<Series> series,
    required AxisFormat xAxis,
    required AxisFormat yAxis,
    bool stacked = false,
    bool grouped = false,
    TooltipConfig? tooltip,
    AnimationConfig? animation,
  });

  LineChartAdapter createLineChart({
    required List<Series> series,
    required AxisFormat xAxis,
    required AxisFormat yAxis,
    bool showPoints = true,
    bool smoothLine = false,
    bool fillArea = false,
    TooltipConfig? tooltip,
    AnimationConfig? animation,
  });

  HeatmapAdapter createHeatmap({
    required List<HeatCell> cells,
    required AxisFormat xAxis,
    required AxisFormat yAxis,
    required List<HeatScaleStop> colorStops,
    TooltipConfig? tooltip,
    AnimationConfig? animation,
  });
}
