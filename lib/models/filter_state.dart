import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_state.freezed.dart';
part 'filter_state.g.dart';

class DateTimeRangeConverter
    implements JsonConverter<DateTimeRange, Map<String, dynamic>> {
  const DateTimeRangeConverter();

  @override
  DateTimeRange fromJson(Map<String, dynamic> json) => DateTimeRange(
    start: DateTime.parse(json['start'] as String),
    end: DateTime.parse(json['end'] as String),
  );

  @override
  Map<String, dynamic> toJson(DateTimeRange dateRange) => {
    'start': dateRange.start.toIso8601String(),
    'end': dateRange.end.toIso8601String(),
  };
}

@freezed
class FilterState with _$FilterState {
  const factory FilterState({
    String? plantId,
    String? unitId,
    String? segmentId,
    String? lineId,
    String? machineId,
    @DateTimeRangeConverter() required DateTimeRange dateRange,
    String? shiftId,
    String? operatorId,
    String? productId,
  }) = _FilterState;

  factory FilterState.initial() => FilterState(
    dateRange: DateTimeRange(
      start: DateTime.now().subtract(const Duration(days: 7)),
      end: DateTime.now(),
    ),
  );

  factory FilterState.fromJson(Map<String, dynamic> json) =>
      _$FilterStateFromJson(json);
}

@freezed
class ComparisonFilters with _$ComparisonFilters {
  const factory ComparisonFilters({
    required List<String> machineIds,
    @DateTimeRangeConverter() required DateTimeRange dateRange,
    String? shiftId,
    String? operatorId,
    String? productId,
  }) = _ComparisonFilters;

  factory ComparisonFilters.fromJson(Map<String, dynamic> json) =>
      _$ComparisonFiltersFromJson(json);
}

@freezed
class KpiComparison with _$KpiComparison {
  const factory KpiComparison({
    required String machineId,
    required String machineName,
    required Map<String, double> kpiValues,
  }) = _KpiComparison;

  factory KpiComparison.fromJson(Map<String, dynamic> json) =>
      _$KpiComparisonFromJson(json);
}
