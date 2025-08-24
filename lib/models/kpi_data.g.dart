// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kpi_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KpiDataImpl _$$KpiDataImplFromJson(Map<String, dynamic> json) =>
    _$KpiDataImpl(
      machineId: json['machineId'] as String,
      kpiType: json['kpiType'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      value: (json['value'] as num).toDouble(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$KpiDataImplToJson(_$KpiDataImpl instance) =>
    <String, dynamic>{
      'machineId': instance.machineId,
      'kpiType': instance.kpiType,
      'timestamp': instance.timestamp.toIso8601String(),
      'value': instance.value,
      'unit': instance.unit,
    };

_$KpiDefinitionImpl _$$KpiDefinitionImplFromJson(Map<String, dynamic> json) =>
    _$KpiDefinitionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      unit: json['unit'] as String,
      category: $enumDecode(_$KpiCategoryEnumMap, json['category']),
    );

Map<String, dynamic> _$$KpiDefinitionImplToJson(_$KpiDefinitionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'unit': instance.unit,
      'category': _$KpiCategoryEnumMap[instance.category]!,
    };

const _$KpiCategoryEnumMap = {
  KpiCategory.output: 'output',
  KpiCategory.performance: 'performance',
  KpiCategory.availability: 'availability',
  KpiCategory.quality: 'quality',
  KpiCategory.oee: 'oee',
  KpiCategory.ooe: 'ooe',
  KpiCategory.assetUtilization: 'asset_utilization',
  KpiCategory.totalAssetUtilization: 'total_asset_utilization',
};

_$OutputAggregateResponseImpl _$$OutputAggregateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OutputAggregateResponseImpl(
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      groupBy: json['groupBy'] as String,
      results: (json['results'] as List<dynamic>)
          .map((e) => OutputResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OutputAggregateResponseImplToJson(
        _$OutputAggregateResponseImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'groupBy': instance.groupBy,
      'results': instance.results,
    };

_$OutputResultImpl _$$OutputResultImplFromJson(Map<String, dynamic> json) =>
    _$OutputResultImpl(
      machineId: json['machineId'] as String,
      totalOutputQty: (json['totalOutputQty'] as num?)?.toInt(),
      rejectedOutputQty: (json['rejectedOutputQty'] as num?)?.toInt(),
      goodOutputQty: (json['goodOutputQty'] as num?)?.toInt(),
      yieldRatio: (json['yieldRatio'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$OutputResultImplToJson(_$OutputResultImpl instance) =>
    <String, dynamic>{
      'machineId': instance.machineId,
      'totalOutputQty': instance.totalOutputQty,
      'rejectedOutputQty': instance.rejectedOutputQty,
      'goodOutputQty': instance.goodOutputQty,
      'yieldRatio': instance.yieldRatio,
    };

_$OutputTimeseriesResponseImpl _$$OutputTimeseriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OutputTimeseriesResponseImpl(
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      interval: json['interval'] as String,
      series: (json['series'] as List<dynamic>)
          .map((e) => OutputTimeseries.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OutputTimeseriesResponseImplToJson(
        _$OutputTimeseriesResponseImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'interval': instance.interval,
      'series': instance.series,
    };

_$OutputTimeseriesImpl _$$OutputTimeseriesImplFromJson(
        Map<String, dynamic> json) =>
    _$OutputTimeseriesImpl(
      machineId: json['machineId'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => OutputDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OutputTimeseriesImplToJson(
        _$OutputTimeseriesImpl instance) =>
    <String, dynamic>{
      'machineId': instance.machineId,
      'data': instance.data,
    };

_$OutputDataPointImpl _$$OutputDataPointImplFromJson(
        Map<String, dynamic> json) =>
    _$OutputDataPointImpl(
      timestamp: DateTime.parse(json['timestamp'] as String),
      totalOutputQty: (json['totalOutputQty'] as num?)?.toInt(),
      rejectedOutputQty: (json['rejectedOutputQty'] as num?)?.toInt(),
      goodOutputQty: (json['goodOutputQty'] as num?)?.toInt(),
      yieldRatio: (json['yieldRatio'] as num?)?.toDouble(),
      value: (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$OutputDataPointImplToJson(
        _$OutputDataPointImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'totalOutputQty': instance.totalOutputQty,
      'rejectedOutputQty': instance.rejectedOutputQty,
      'goodOutputQty': instance.goodOutputQty,
      'yieldRatio': instance.yieldRatio,
      'value': instance.value,
    };

_$PerformanceAggregateResponseImpl _$$PerformanceAggregateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PerformanceAggregateResponseImpl(
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      groupBy: json['groupBy'] as String,
      results: (json['results'] as List<dynamic>)
          .map((e) => PerformanceResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PerformanceAggregateResponseImplToJson(
        _$PerformanceAggregateResponseImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'groupBy': instance.groupBy,
      'results': instance.results,
    };

_$PerformanceResultImpl _$$PerformanceResultImplFromJson(
        Map<String, dynamic> json) =>
    _$PerformanceResultImpl(
      key: json['key'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$PerformanceResultImplToJson(
        _$PerformanceResultImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

_$PerformanceTimeseriesResponseImpl
    _$$PerformanceTimeseriesResponseImplFromJson(Map<String, dynamic> json) =>
        _$PerformanceTimeseriesResponseImpl(
          startTime: DateTime.parse(json['startTime'] as String),
          endTime: DateTime.parse(json['endTime'] as String),
          interval: json['interval'] as String,
          series: (json['series'] as List<dynamic>)
              .map((e) =>
                  PerformanceTimeseries.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$PerformanceTimeseriesResponseImplToJson(
        _$PerformanceTimeseriesResponseImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'interval': instance.interval,
      'series': instance.series,
    };

_$PerformanceTimeseriesImpl _$$PerformanceTimeseriesImplFromJson(
        Map<String, dynamic> json) =>
    _$PerformanceTimeseriesImpl(
      machineId: json['machineId'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => PerformanceDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PerformanceTimeseriesImplToJson(
        _$PerformanceTimeseriesImpl instance) =>
    <String, dynamic>{
      'machineId': instance.machineId,
      'data': instance.data,
    };

_$PerformanceDataPointImpl _$$PerformanceDataPointImplFromJson(
        Map<String, dynamic> json) =>
    _$PerformanceDataPointImpl(
      timestamp: DateTime.parse(json['timestamp'] as String),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$PerformanceDataPointImplToJson(
        _$PerformanceDataPointImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'value': instance.value,
    };

_$AvailabilityAggregateResponseImpl
    _$$AvailabilityAggregateResponseImplFromJson(Map<String, dynamic> json) =>
        _$AvailabilityAggregateResponseImpl(
          startTime: DateTime.parse(json['startTime'] as String),
          endTime: DateTime.parse(json['endTime'] as String),
          groupBy: json['groupBy'] as String,
          results: (json['results'] as List<dynamic>)
              .map(
                  (e) => AvailabilityResult.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$AvailabilityAggregateResponseImplToJson(
        _$AvailabilityAggregateResponseImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'groupBy': instance.groupBy,
      'results': instance.results,
    };

_$AvailabilityResultImpl _$$AvailabilityResultImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailabilityResultImpl(
      machineId: json['machineId'] as String,
      availabilityPercentage:
          (json['availabilityPercentage'] as num).toDouble(),
      uptimeHours: (json['uptimeHours'] as num).toDouble(),
      downtimeHours: (json['downtimeHours'] as num).toDouble(),
      totalShifts: (json['totalShifts'] as num).toInt(),
    );

Map<String, dynamic> _$$AvailabilityResultImplToJson(
        _$AvailabilityResultImpl instance) =>
    <String, dynamic>{
      'machineId': instance.machineId,
      'availabilityPercentage': instance.availabilityPercentage,
      'uptimeHours': instance.uptimeHours,
      'downtimeHours': instance.downtimeHours,
      'totalShifts': instance.totalShifts,
    };

_$AvailabilityTimeseriesResponseImpl
    _$$AvailabilityTimeseriesResponseImplFromJson(Map<String, dynamic> json) =>
        _$AvailabilityTimeseriesResponseImpl(
          startTime: DateTime.parse(json['startTime'] as String),
          endTime: DateTime.parse(json['endTime'] as String),
          interval: json['interval'] as String,
          series: (json['series'] as List<dynamic>)
              .map((e) =>
                  AvailabilityTimeseries.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$AvailabilityTimeseriesResponseImplToJson(
        _$AvailabilityTimeseriesResponseImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'interval': instance.interval,
      'series': instance.series,
    };

_$AvailabilityTimeseriesImpl _$$AvailabilityTimeseriesImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailabilityTimeseriesImpl(
      machineId: json['machineId'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => AvailabilityDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AvailabilityTimeseriesImplToJson(
        _$AvailabilityTimeseriesImpl instance) =>
    <String, dynamic>{
      'machineId': instance.machineId,
      'data': instance.data,
    };

_$AvailabilityDataPointImpl _$$AvailabilityDataPointImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailabilityDataPointImpl(
      timestamp: DateTime.parse(json['timestamp'] as String),
      availabilityRatio: (json['availabilityRatio'] as num).toDouble(),
      totalMinutes: (json['totalMinutes'] as num).toInt(),
      actualProductionMinutes: (json['actualProductionMinutes'] as num).toInt(),
      plannedProductionMinutes:
          (json['plannedProductionMinutes'] as num).toInt(),
    );

Map<String, dynamic> _$$AvailabilityDataPointImplToJson(
        _$AvailabilityDataPointImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'availabilityRatio': instance.availabilityRatio,
      'totalMinutes': instance.totalMinutes,
      'actualProductionMinutes': instance.actualProductionMinutes,
      'plannedProductionMinutes': instance.plannedProductionMinutes,
    };
