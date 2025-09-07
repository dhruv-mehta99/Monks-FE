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

  factory KpiData.fromJson(Map<String, dynamic> json) =>
      _$KpiDataFromJson(json);
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
    int? totalOutputQty,
    int? rejectedOutputQty,
    int? goodOutputQty,
    double? yieldRatio,
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
  const OutputDataPoint._();

  const factory OutputDataPoint({
    required DateTime timestamp,
    int? totalOutputQty,
    int? rejectedOutputQty,
    int? goodOutputQty,
    double? yieldRatio,
  }) = _OutputDataPoint;

  // Computed property to ensure value is always available for charts
  double get chartValue => (yieldRatio?.toDouble() ?? 0.0) * 100;

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

// Machine Availability KPI Models
@freezed
class AvailabilityAggregateResponse with _$AvailabilityAggregateResponse {
  const factory AvailabilityAggregateResponse({
    required DateTime startTime,
    required DateTime endTime,
    required String groupBy,
    required List<AvailabilityResult> results,
  }) = _AvailabilityAggregateResponse;

  factory AvailabilityAggregateResponse.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityAggregateResponseFromJson(json);
}

@freezed
class AvailabilityResult with _$AvailabilityResult {
  const factory AvailabilityResult({
    required String machineId,
    required double availabilityPercentage,
    required double uptimeHours,
    required double downtimeHours,
    required int totalShifts,
  }) = _AvailabilityResult;

  factory AvailabilityResult.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityResultFromJson(json);
}

@freezed
class AvailabilityTimeseriesResponse with _$AvailabilityTimeseriesResponse {
  const factory AvailabilityTimeseriesResponse({
    required DateTime startTime,
    required DateTime endTime,
    required String interval,
    required List<AvailabilityTimeseries> series,
  }) = _AvailabilityTimeseriesResponse;

  factory AvailabilityTimeseriesResponse.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityTimeseriesResponseFromJson(json);
}

@freezed
class AvailabilityTimeseries with _$AvailabilityTimeseries {
  const factory AvailabilityTimeseries({
    required String machineId,
    required List<AvailabilityDataPoint> data,
  }) = _AvailabilityTimeseries;

  factory AvailabilityTimeseries.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityTimeseriesFromJson(json);
}

@freezed
class AvailabilityDataPoint with _$AvailabilityDataPoint {
  const AvailabilityDataPoint._();

  const factory AvailabilityDataPoint({
    required DateTime timestamp,
    required double availabilityRatio,
    required int totalMinutes,
    required int actualProductionMinutes,
    required int plannedProductionMinutes,
  }) = _AvailabilityDataPoint;

  // Computed property to convert ratio to percentage for charts
  double get chartValue {
    double value;
    // If the ratio is already a percentage (greater than 1), return as is
    // Otherwise, multiply by 100 to convert ratio to percentage
    if (availabilityRatio > 1.0) {
      value = availabilityRatio;
    } else {
      value = availabilityRatio * 100;
    }

    // Cap the value at 100 to ensure it doesn't exceed 100%
    return value.clamp(0.0, 100.0);
  }

  factory AvailabilityDataPoint.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityDataPointFromJson(json);
}
