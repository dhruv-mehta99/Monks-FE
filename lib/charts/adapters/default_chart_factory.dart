import '../core/chart_adapter.dart';
import '../core/chart_models.dart';
import 'fl_chart_bar_adapter.dart';
import 'fl_chart_line_adapter.dart';
import 'syncfusion_heatmap_adapter.dart';

class DefaultChartFactory implements ChartAdapterFactory {
  @override
  BarChartAdapter createBarChart({
    required List<Series> series,
    required AxisFormat xAxis,
    required AxisFormat yAxis,
    bool stacked = false,
    bool grouped = false,
    TooltipConfig? tooltip,
    AnimationConfig? animation,
  }) => FlChartBarAdapter(
      series: series,
      xAxis: xAxis,
      yAxis: yAxis,
      stacked: stacked,
      grouped: grouped,
      tooltip: tooltip,
      animation: animation,
    );

  @override
  LineChartAdapter createLineChart({
    required List<Series> series,
    required AxisFormat xAxis,
    required AxisFormat yAxis,
    bool showPoints = true,
    bool smoothLine = false,
    bool fillArea = false,
    TooltipConfig? tooltip,
    AnimationConfig? animation,
  }) => FlChartLineAdapter(
      series: series,
      xAxis: xAxis,
      yAxis: yAxis,
      showPoints: showPoints,
      smoothLine: smoothLine,
      fillArea: fillArea,
      tooltip: tooltip,
      animation: animation,
    );

  @override
  HeatmapAdapter createHeatmap({
    required List<HeatCell> cells,
    required AxisFormat xAxis,
    required AxisFormat yAxis,
    required List<HeatScaleStop> colorStops,
    TooltipConfig? tooltip,
    AnimationConfig? animation,
  }) => SyncfusionHeatmapAdapter(
      cells: cells,
      xAxis: xAxis,
      yAxis: yAxis,
      colorStops: colorStops,
      tooltip: tooltip,
      animation: animation,
    );
}
