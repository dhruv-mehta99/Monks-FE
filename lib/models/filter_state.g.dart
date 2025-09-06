// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterStateImpl _$$FilterStateImplFromJson(Map<String, dynamic> json) =>
    _$FilterStateImpl(
      plantId: json['plantId'] as String?,
      unitId: json['unitId'] as String?,
      segmentId: json['segmentId'] as String?,
      lineId: json['lineId'] as String?,
      machineId: json['machineId'] as String?,
      dateRange: const DateTimeRangeConverter()
          .fromJson(json['dateRange'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FilterStateImplToJson(_$FilterStateImpl instance) =>
    <String, dynamic>{
      'plantId': instance.plantId,
      'unitId': instance.unitId,
      'segmentId': instance.segmentId,
      'lineId': instance.lineId,
      'machineId': instance.machineId,
      'dateRange': const DateTimeRangeConverter().toJson(instance.dateRange),
    };

_$ComparisonFiltersImpl _$$ComparisonFiltersImplFromJson(
        Map<String, dynamic> json) =>
    _$ComparisonFiltersImpl(
      machineIds: (json['machineIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dateRange: const DateTimeRangeConverter()
          .fromJson(json['dateRange'] as Map<String, dynamic>),
      shiftId: json['shiftId'] as String?,
      operatorId: json['operatorId'] as String?,
      productId: json['productId'] as String?,
    );

Map<String, dynamic> _$$ComparisonFiltersImplToJson(
        _$ComparisonFiltersImpl instance) =>
    <String, dynamic>{
      'machineIds': instance.machineIds,
      'dateRange': const DateTimeRangeConverter().toJson(instance.dateRange),
      'shiftId': instance.shiftId,
      'operatorId': instance.operatorId,
      'productId': instance.productId,
    };

_$KpiComparisonImpl _$$KpiComparisonImplFromJson(Map<String, dynamic> json) =>
    _$KpiComparisonImpl(
      machineId: json['machineId'] as String,
      machineName: json['machineName'] as String,
      kpiValues: (json['kpiValues'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$KpiComparisonImplToJson(_$KpiComparisonImpl instance) =>
    <String, dynamic>{
      'machineId': instance.machineId,
      'machineName': instance.machineName,
      'kpiValues': instance.kpiValues,
    };
