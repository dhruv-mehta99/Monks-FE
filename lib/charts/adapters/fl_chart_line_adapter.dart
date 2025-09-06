import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../core/design/tokens.dart';
import '../core/chart_adapter.dart';

class FlChartLineAdapter extends LineChartAdapter {
  FlChartLineAdapter({
    required super.series,
    required super.xAxis,
    required super.yAxis,
    super.showPoints = true,
    super.smoothLine = false,
    super.fillArea = false,
    super.tooltip,
    super.animation,
  });

  @override
  Widget build(BuildContext context) => Padding(
    padding: AppTokens.chartPadding,
    child: LineChart(
      LineChartData(
        lineBarsData: _createLineBarsData(),
        titlesData: _createTitlesData(),
        gridData: FlGridData(
          show: true,
          drawVerticalLine: xAxis.showGrid,
          getDrawingHorizontalLine: (v) => const FlLine(
            color: AppTokens.gridColor,
            strokeWidth: 1,
            dashArray: [4, 4],
          ),
          getDrawingVerticalLine: (v) => const FlLine(
            color: AppTokens.gridColor,
            strokeWidth: 1,
            dashArray: [4, 4],
          ),
        ),
        borderData: FlBorderData(show: false),
        lineTouchData: _createTouchData(),
      ),
    ),
  );

  List<LineChartBarData> _createLineBarsData() => series.map((s) {
    final color =
        s.color ??
        AppTokens.chartColors[series.indexOf(s) % AppTokens.chartColors.length];
    final spots = s.data
        .asMap()
        .entries
        .map((e) => FlSpot(e.key.toDouble(), (e.value.y).toDouble()))
        .toList();

    return LineChartBarData(
      spots: spots,
      isCurved: smoothLine,
      color: color,
      barWidth: AppTokens.chartLineWidth,
      dotData: FlDotData(
        show: showPoints,
        getDotPainter: (spot, percent, bar, index) => FlDotCirclePainter(
          radius: AppTokens.chartPointRadius,
          color: Colors.white,
          strokeWidth: 2,
          strokeColor: color,
        ),
      ),
      belowBarData: BarAreaData(
        show: fillArea,
        gradient: LinearGradient(
          colors: [
            color.withOpacity(AppTokens.areaOpacity),
            Colors.transparent,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }).toList();

  FlTitlesData _createTitlesData() => FlTitlesData(
    leftTitles: AxisTitles(
      axisNameWidget: yAxis.title != null ? Text(yAxis.title!) : null,
      sideTitles: SideTitles(
        showTitles: yAxis.showLabels,
        getTitlesWidget: (value, meta) {
          final text = yAxis.labelFormatter?.call(value) ?? value.toString();
          return Text(text, style: AppTokens.chartAxisLabel);
        },
        reservedSize: 36,
      ),
    ),
    bottomTitles: AxisTitles(
      axisNameWidget: xAxis.title != null ? Text(xAxis.title!) : null,
      sideTitles: SideTitles(
        showTitles: xAxis.showLabels,
        getTitlesWidget: (value, meta) {
          final index = value.toInt();
          if (index >= 0 && index < series.first.data.length) {
            final x = series.first.data[index].x;
            final text = xAxis.labelFormatter?.call(x) ?? x.toString();
            return Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(text, style: AppTokens.chartAxisLabel),
            );
          }
          return const Text('');
        },
      ),
    ),
  );

  LineTouchData _createTouchData() {
    if (tooltip?.enabled != true) return const LineTouchData(enabled: false);

    return LineTouchData(
      touchTooltipData: LineTouchTooltipData(
        getTooltipColor: (touchedSpot) => AppTokens.tooltipBg,
        tooltipBorderRadius: BorderRadius.circular(AppTokens.tooltipRadius),
        getTooltipItems: (touchedSpots) => touchedSpots.map((spot) {
          final s = this.series[spot.barIndex];
          final dataPoint = s.data[spot.x.toInt()];
          final text =
              tooltip?.formatter?.call(dataPoint.x, dataPoint.y) ??
              '${s.name}: ${dataPoint.y}';
          return LineTooltipItem(text, AppTokens.chartTooltip);
        }).toList(),
      ),
    );
  }
}
