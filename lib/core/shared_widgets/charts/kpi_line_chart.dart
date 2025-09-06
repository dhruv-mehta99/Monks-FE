import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../models/models.dart';

class KpiLineChart extends StatelessWidget {
  final String title;
  final List<OutputTimeseries> data;
  final String? yAxisLabel;
  final String? xAxisLabel;
  final Color? primaryColor;
  final bool showGrid;
  final bool showLegend;
  final List<Color>? colors;

  const KpiLineChart({
    super.key,
    required this.title,
    required this.data,
    this.yAxisLabel,
    this.xAxisLabel,
    this.primaryColor,
    this.showGrid = true,
    this.showLegend = true,
    this.colors,
  });

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return _buildEmptyState();
    }

    final defaultColors =
        colors ??
        [
          primaryColor ?? Theme.of(context).primaryColor,
          Colors.orange,
          Colors.green,
          Colors.purple,
          Colors.red,
        ];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            if (showLegend) ...[
              const SizedBox(height: 4),
              _buildLegend(data, defaultColors),
            ],
            const SizedBox(height: 4),
            Expanded(
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(
                    show: showGrid,
                    drawVerticalLine: showGrid,
                    horizontalInterval: _calculateYInterval(),
                    verticalInterval: _calculateXInterval(),
                    getDrawingHorizontalLine: (value) => FlLine(
                      color: Colors.grey.withOpacity(0.3),
                      strokeWidth: 1,
                    ),
                    getDrawingVerticalLine: (value) => FlLine(
                      color: Colors.grey.withOpacity(0.3),
                      strokeWidth: 1,
                    ),
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        interval: _calculateXInterval(),
                        getTitlesWidget: (value, meta) {
                          if (value.toInt() >= 0 &&
                              value.toInt() < _getAllTimePoints().length) {
                            final timePoint =
                                _getAllTimePoints()[value.toInt()];
                            return Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                _formatTime(timePoint),
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            );
                          }
                          return const Text('');
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: _calculateYInterval(),
                        getTitlesWidget: (value, meta) => Text(
                          value.toStringAsFixed(1),
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        reservedSize: 42,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(color: Colors.grey.withOpacity(0.3)),
                  ),
                  minX: 0,
                  maxX: (_getAllTimePoints().length - 1).toDouble(),
                  minY: _calculateMinY(),
                  maxY: _calculateMaxY(),
                  lineBarsData: _buildLineBarsData(defaultColors),
                  lineTouchData: LineTouchData(
                    enabled: true,
                    touchTooltipData: LineTouchTooltipData(
                      tooltipBgColor: Colors.blueGrey.withOpacity(0.9),
                      getTooltipItems: (touchedSpots) =>
                          touchedSpots.map((touchedSpot) {
                            final timePoint =
                                _getAllTimePoints()[touchedSpot.x.toInt()];
                            return LineTooltipItem(
                              '${_formatTime(timePoint)}\n',
                              const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: touchedSpot.y.toStringAsFixed(2),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() => Card(
    child: SizedBox(
      height: 300,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.show_chart, size: 48, color: Colors.grey[400]),
            const SizedBox(height: 16),
            Text(
              'No data available',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 8),
            Text(
              'Select filters to view KPI data',
              style: TextStyle(fontSize: 14, color: Colors.grey[500]),
            ),
          ],
        ),
      ),
    ),
  );

  Widget _buildLegend(List<OutputTimeseries> data, List<Color> colors) => Wrap(
    spacing: 16,
    runSpacing: 8,
    children: data.asMap().entries.map((entry) {
      final index = entry.key;
      final series = entry.value;
      final color = colors[index % colors.length];

      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: 8),
          Text(
            'Machine ${series.machineId}',
            style: const TextStyle(fontSize: 14),
          ),
        ],
      );
    }).toList(),
  );

  List<LineChartBarData> _buildLineBarsData(List<Color> colors) =>
      data.asMap().entries.map((entry) {
        final index = entry.key;
        final series = entry.value;
        final color = colors[index % colors.length];

        final spots = series.data.asMap().entries.map((dataEntry) {
          // [print only for 1st entry]
          // if (dataEntry.key == 0) {
          print('series.machineId: ${series.machineId}');
          print('dataEntry.value: ${dataEntry.value}');
          print('dataEntry.key: ${dataEntry.key}');
          // }
          final dataIndex = dataEntry.key;
          final dataPoint = dataEntry.value;
          return FlSpot(dataIndex.toDouble(), dataPoint.chartValue);
        }).toList();

        return LineChartBarData(
          spots: spots,
          isCurved: true,
          color: color,
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: const FlDotData(show: false),
          belowBarData: BarAreaData(show: true, color: color.withOpacity(0.1)),
        );
      }).toList();

  List<DateTime> _getAllTimePoints() {
    if (data.isEmpty) return [];

    // Get all unique time points from all series
    final allPoints = <DateTime>{};
    for (final series in data) {
      for (final point in series.data) {
        allPoints.add(point.timestamp);
      }
    }

    final sortedPoints = allPoints.toList()..sort();
    return sortedPoints;
  }

  double _calculateMinY() {
    if (data.isEmpty) return 0;

    double minY = double.infinity;
    for (final series in data) {
      for (final point in series.data) {
        if (point.chartValue < minY) minY = point.chartValue;
      }
    }
    return minY == double.infinity ? 0 : (minY * 0.9);
  }

  double _calculateMaxY() {
    if (data.isEmpty) return 100;

    double maxY = double.negativeInfinity;
    for (final series in data) {
      for (final point in series.data) {
        if (point.chartValue > maxY) maxY = point.chartValue;
      }
    }
    return maxY == double.negativeInfinity ? 100 : (maxY * 1.1);
  }

  double _calculateYInterval() {
    final range = _calculateMaxY() - _calculateMinY();
    if (range <= 0) return 1;
    return range / 5;
  }

  double _calculateXInterval() {
    final timePoints = _getAllTimePoints();
    if (timePoints.length <= 1) return 1;
    return (timePoints.length - 1) / 5;
  }

  String _formatTime(DateTime time) =>
      '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
}
