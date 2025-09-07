import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../core/design/tokens.dart';
import '../core/chart_adapter.dart';

class FlChartBarAdapter extends BarChartAdapter {
  FlChartBarAdapter({
    required super.series,
    required super.xAxis,
    required super.yAxis,
    super.stacked = false,
    super.grouped = false,
    super.tooltip,
    super.animation,
  });

  @override
  Widget build(BuildContext context) => Padding(
    padding: AppTokens.chartPadding,
    child: BarChart(
      BarChartData(
        barGroups: _createBarGroups(),
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
        barTouchData: _createTouchData(),
      ),
    ),
  );

  List<BarChartGroupData> _createBarGroups() {
    final xValues = series.first.data.map((e) => e.x).toList();

    return List.generate(xValues.length, (index) {
      final rods = <BarChartRodData>[];
      for (final s in series) {
        final y = (s.data[index].y).toDouble();
        rods.add(
          BarChartRodData(
            toY: y,
            color:
                s.color ??
                AppTokens.chartColors[series.indexOf(s) %
                    AppTokens.chartColors.length],
            width: AppTokens.chartBarWidth,
            borderRadius: BorderRadius.circular(AppTokens.barRadius),
          ),
        );
      }

      return BarChartGroupData(
        x: index,
        barRods: rods,
        barsSpace: grouped ? AppTokens.groupedBarsSpace : 0,
        showingTooltipIndicators: const [0],
      );
    });
  }

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

  BarTouchData _createTouchData() {
    if (tooltip?.enabled != true) return BarTouchData(enabled: false);

    return BarTouchData(
      touchTooltipData: BarTouchTooltipData(
        getTooltipItem: (group, groupIndex, rod, rodIndex) {
          final s = series[rodIndex];
          final dataPoint = s.data[group.x.toInt()];
          final text =
              tooltip?.formatter?.call(dataPoint.x, dataPoint.y) ??
              '${s.name}: ${dataPoint.y}';
          return BarTooltipItem(text, AppTokens.chartTooltip);
        },
      ),
    );
  }
}
