import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/utils/color_converter.dart';

part 'chart_models.freezed.dart';
part 'chart_models.g.dart';

/// A series of data points for a chart
@freezed
class Series with _$Series {
  const factory Series({
    required String name,
    required List<DataPoint> data,
    @NullableColorConverter() Color? color,
  }) = _Series;

  factory Series.fromJson(Map<String, dynamic> json) =>
      _$SeriesFromJson(json);
}

/// A single data point in a series
@freezed
class DataPoint with _$DataPoint {
  const factory DataPoint({
    required dynamic x,
    required num y,
    String? label,
  }) = _DataPoint;

  factory DataPoint.fromJson(Map<String, dynamic> json) =>
      _$DataPointFromJson(json);
}

/// A legend item for a chart
@freezed
class LegendItem with _$LegendItem {
  const factory LegendItem({
    required String text,
    @ColorConverter() required Color color,
    bool? isVisible,
  }) = _LegendItem;

  factory LegendItem.fromJson(Map<String, dynamic> json) =>
      _$LegendItemFromJson(json);
}

/// Axis formatting options
@freezed
class AxisFormat with _$AxisFormat {
  const factory AxisFormat({
    String? title,
    @Default(true) bool showGrid,
    @Default(true) bool showLabels,
    @Default(true) bool showTicks,
    @JsonKey(ignore: true) String Function(dynamic value)? labelFormatter,
  }) = _AxisFormat;

  factory AxisFormat.fromJson(Map<String, dynamic> json) =>
      _$AxisFormatFromJson(json);
}

/// A cell in a heatmap
@freezed
class HeatCell with _$HeatCell {
  const factory HeatCell({
    required int x,
    required int y,
    required double value,
    String? label,
  }) = _HeatCell;

  factory HeatCell.fromJson(Map<String, dynamic> json) =>
      _$HeatCellFromJson(json);
}

/// A color stop in a heatmap scale
@freezed
class HeatScaleStop with _$HeatScaleStop {
  const factory HeatScaleStop({
    required double value,
    @ColorConverter() required Color color,
  }) = _HeatScaleStop;

  factory HeatScaleStop.fromJson(Map<String, dynamic> json) =>
      _$HeatScaleStopFromJson(json);
}

/// Chart tooltip configuration
@freezed
class TooltipConfig with _$TooltipConfig {
  const factory TooltipConfig({
    @Default(true) bool enabled,
    @JsonKey(ignore: true) String Function(dynamic x, dynamic y)? formatter,
  }) = _TooltipConfig;

  factory TooltipConfig.fromJson(Map<String, dynamic> json) =>
      _$TooltipConfigFromJson(json);
}

/// Chart animation configuration
@freezed
class AnimationConfig with _$AnimationConfig {
  const factory AnimationConfig({
    @Default(Duration(milliseconds: 300)) Duration duration,
    @Default(Curves.easeInOut) Curve curve,
  }) = _AnimationConfig;
}