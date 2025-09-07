import '../../../models/models.dart';
import 'kpi_line_chart.dart';

// Extension to convert OutputTimeseries to ChartTimeseries
extension OutputTimeseriesToChart on OutputTimeseries {
  ChartTimeseries toChartTimeseries() {
    final chartData = data.asMap().entries.map((entry) {
      final index = entry.key;
      final point = entry.value;
      return ChartDataPoint(
        x: index.toDouble(),
        y: point.chartValue,
        timestamp: point.timestamp,
      );
    }).toList();

    return ChartTimeseries(machineId: machineId, data: chartData);
  }
}

// Extension to convert AvailabilityTimeseries to ChartTimeseries
extension AvailabilityTimeseriesToChart on AvailabilityTimeseries {
  ChartTimeseries toChartTimeseries() {
    final chartData = data.asMap().entries.map((entry) {
      final index = entry.key;
      final point = entry.value;

      return ChartDataPoint(
        x: index.toDouble(),
        y: point.chartValue,
        timestamp: point.timestamp,
      );
    }).toList();

    return ChartTimeseries(machineId: machineId, data: chartData);
  }
}
