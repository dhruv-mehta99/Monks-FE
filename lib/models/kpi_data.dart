import 'package:freezed_annotation/freezed_annotation.dart';

part 'kpi_data.freezed.dart';
part 'kpi_data.g.dart';

@freezed
class KpiData with _$KpiData {
  const factory KpiData({
    required String machineId,
    required String kpiType,
    required DateTime timestamp,
    required double value,
    required String unit,
  }) = _KpiData;

  factory KpiData.fromJson(Map<String, dynamic> json) => _$KpiDataFromJson(json);
}

@freezed
class KpiDefinition with _$KpiDefinition {
  const factory KpiDefinition({
    required String id,
    required String name,
    required String description,
    required String unit,
    required KpiCategory category,
  }) = _KpiDefinition;

  factory KpiDefinition.fromJson(Map<String, dynamic> json) =>
      _$KpiDefinitionFromJson(json);
}

enum KpiCategory {
  @JsonValue('output')
  output,
  @JsonValue('performance')
  performance,
  @JsonValue('availability')
  availability,
  @JsonValue('quality')
  quality,
  @JsonValue('oee')
  oee,
  @JsonValue('ooe')
  ooe,
  @JsonValue('asset_utilization')
  assetUtilization,
  @JsonValue('total_asset_utilization')
  totalAssetUtilization,
}

// API Response Models
@freezed
class OutputAggregateResponse with _$OutputAggregateResponse {
  const factory OutputAggregateResponse({
    required DateTime startTime,
    required DateTime endTime,
    required String groupBy,
    required List<OutputResult> results,
  }) = _OutputAggregateResponse;

  factory OutputAggregateResponse.fromJson(Map<String, dynamic> json) =>
      _$OutputAggregateResponseFromJson(json);
}

@freezed
class OutputResult with _$OutputResult {
  const factory OutputResult({
    required String machineId,
    required int totalOutputQty,
    required int rejectedOutputQty,
    required int goodOutputQty,
    required double yieldRatio,
  }) = _OutputResult;

  factory OutputResult.fromJson(Map<String, dynamic> json) =>
      _$OutputResultFromJson(json);
}

@freezed
class OutputTimeseriesResponse with _$OutputTimeseriesResponse {
  const factory OutputTimeseriesResponse({
    required DateTime startTime,
    required DateTime endTime,
    required String interval,
    required List<OutputTimeseries> series,
  }) = _OutputTimeseriesResponse;

  factory OutputTimeseriesResponse.fromJson(Map<String, dynamic> json) =>
      _$OutputTimeseriesResponseFromJson(json);
}

@freezed
class OutputTimeseries with _$OutputTimeseries {
  const factory OutputTimeseries({
    required String machineId,
    required List<OutputDataPoint> data,
  }) = _OutputTimeseries;

  factory OutputTimeseries.fromJson(Map<String, dynamic> json) =>
      _$OutputTimeseriesFromJson(json);
}

@freezed
class OutputDataPoint with _$OutputDataPoint {
  const factory OutputDataPoint({
    required DateTime timestamp,
    required double value,
  }) = _OutputDataPoint;

  factory OutputDataPoint.fromJson(Map<String, dynamic> json) =>
      _$OutputDataPointFromJson(json);
}

// Performance KPI Models
@freezed
class PerformanceAggregateResponse with _$PerformanceAggregateResponse {
  const factory PerformanceAggregateResponse({
    required DateTime startTime,
    required DateTime endTime,
    required String groupBy,
    required List<PerformanceResult> results,
  }) = _PerformanceAggregateResponse;

  factory PerformanceAggregateResponse.fromJson(Map<String, dynamic> json) =>
      _$PerformanceAggregateResponseFromJson(json);
}

@freezed
class PerformanceResult with _$PerformanceResult {
  const factory PerformanceResult({
    required String key,
    required double value,
  }) = _PerformanceResult;

  factory PerformanceResult.fromJson(Map<String, dynamic> json) =>
      _$PerformanceResultFromJson(json);
}

@freezed
class PerformanceTimeseriesResponse with _$PerformanceTimeseriesResponse {
  const factory PerformanceTimeseriesResponse({
    required DateTime startTime,
    required DateTime endTime,
    required String interval,
    required List<PerformanceTimeseries> series,
  }) = _PerformanceTimeseriesResponse;

  factory PerformanceTimeseriesResponse.fromJson(Map<String, dynamic> json) =>
      _$PerformanceTimeseriesResponseFromJson(json);
}

@freezed
class PerformanceTimeseries with _$PerformanceTimeseries {
  const factory PerformanceTimeseries({
    required String machineId,
    required List<PerformanceDataPoint> data,
  }) = _PerformanceTimeseries;

  factory PerformanceTimeseries.fromJson(Map<String, dynamic> json) =>
      _$PerformanceTimeseriesFromJson(json);
}

@freezed
class PerformanceDataPoint with _$PerformanceDataPoint {
  const factory PerformanceDataPoint({
    required DateTime timestamp,
    required double value,
  }) = _PerformanceDataPoint;

  factory PerformanceDataPoint.fromJson(Map<String, dynamic> json) =>
      _$PerformanceDataPointFromJson(json);
}
