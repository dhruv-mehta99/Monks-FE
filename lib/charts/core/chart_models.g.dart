// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeriesImpl _$$SeriesImplFromJson(Map<String, dynamic> json) => _$SeriesImpl(
      name: json['name'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => DataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      color: const NullableColorConverter()
          .fromJson((json['color'] as num?)?.toInt()),
    );

Map<String, dynamic> _$$SeriesImplToJson(_$SeriesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'data': instance.data,
      'color': const NullableColorConverter().toJson(instance.color),
    };

_$DataPointImpl _$$DataPointImplFromJson(Map<String, dynamic> json) =>
    _$DataPointImpl(
      x: json['x'],
      y: json['y'] as num,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$$DataPointImplToJson(_$DataPointImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'label': instance.label,
    };

_$LegendItemImpl _$$LegendItemImplFromJson(Map<String, dynamic> json) =>
    _$LegendItemImpl(
      text: json['text'] as String,
      color: const ColorConverter().fromJson((json['color'] as num).toInt()),
      isVisible: json['isVisible'] as bool?,
    );

Map<String, dynamic> _$$LegendItemImplToJson(_$LegendItemImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'color': const ColorConverter().toJson(instance.color),
      'isVisible': instance.isVisible,
    };

_$AxisFormatImpl _$$AxisFormatImplFromJson(Map<String, dynamic> json) =>
    _$AxisFormatImpl(
      title: json['title'] as String?,
      showGrid: json['showGrid'] as bool? ?? true,
      showLabels: json['showLabels'] as bool? ?? true,
      showTicks: json['showTicks'] as bool? ?? true,
    );

Map<String, dynamic> _$$AxisFormatImplToJson(_$AxisFormatImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'showGrid': instance.showGrid,
      'showLabels': instance.showLabels,
      'showTicks': instance.showTicks,
    };

_$HeatCellImpl _$$HeatCellImplFromJson(Map<String, dynamic> json) =>
    _$HeatCellImpl(
      x: (json['x'] as num).toInt(),
      y: (json['y'] as num).toInt(),
      value: (json['value'] as num).toDouble(),
      label: json['label'] as String?,
    );

Map<String, dynamic> _$$HeatCellImplToJson(_$HeatCellImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'value': instance.value,
      'label': instance.label,
    };

_$HeatScaleStopImpl _$$HeatScaleStopImplFromJson(Map<String, dynamic> json) =>
    _$HeatScaleStopImpl(
      value: (json['value'] as num).toDouble(),
      color: const ColorConverter().fromJson((json['color'] as num).toInt()),
    );

Map<String, dynamic> _$$HeatScaleStopImplToJson(_$HeatScaleStopImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'color': const ColorConverter().toJson(instance.color),
    };

_$TooltipConfigImpl _$$TooltipConfigImplFromJson(Map<String, dynamic> json) =>
    _$TooltipConfigImpl(
      enabled: json['enabled'] as bool? ?? true,
    );

Map<String, dynamic> _$$TooltipConfigImplToJson(_$TooltipConfigImpl instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };
