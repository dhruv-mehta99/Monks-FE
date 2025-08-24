// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machine_hierarchy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantImpl _$$PlantImplFromJson(Map<String, dynamic> json) => _$PlantImpl(
      plantId: json['plantId'] as String,
      plantName: json['plantName'] as String,
      location: json['location'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PlantImplToJson(_$PlantImpl instance) =>
    <String, dynamic>{
      'plantId': instance.plantId,
      'plantName': instance.plantName,
      'location': instance.location,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$UnitImpl _$$UnitImplFromJson(Map<String, dynamic> json) => _$UnitImpl(
      unitId: json['unitId'] as String,
      plantId: json['plantId'] as String,
      unitName: json['unitName'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UnitImplToJson(_$UnitImpl instance) =>
    <String, dynamic>{
      'unitId': instance.unitId,
      'plantId': instance.plantId,
      'unitName': instance.unitName,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$SegmentImpl _$$SegmentImplFromJson(Map<String, dynamic> json) =>
    _$SegmentImpl(
      segmentId: json['segmentId'] as String,
      unitId: json['unitId'] as String,
      segmentName: json['segmentName'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SegmentImplToJson(_$SegmentImpl instance) =>
    <String, dynamic>{
      'segmentId': instance.segmentId,
      'unitId': instance.unitId,
      'segmentName': instance.segmentName,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$LineImpl _$$LineImplFromJson(Map<String, dynamic> json) => _$LineImpl(
      lineId: json['lineId'] as String,
      segmentId: json['segmentId'] as String,
      lineName: json['lineName'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$LineImplToJson(_$LineImpl instance) =>
    <String, dynamic>{
      'lineId': instance.lineId,
      'segmentId': instance.segmentId,
      'lineName': instance.lineName,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$MachineImpl _$$MachineImplFromJson(Map<String, dynamic> json) =>
    _$MachineImpl(
      machineId: json['machineId'] as String,
      lineId: json['lineId'] as String,
      machineName: json['machineName'] as String,
      status: $enumDecode(_$MachineStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$MachineImplToJson(_$MachineImpl instance) =>
    <String, dynamic>{
      'machineId': instance.machineId,
      'lineId': instance.lineId,
      'machineName': instance.machineName,
      'status': _$MachineStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$MachineStatusEnumMap = {
  MachineStatus.active: 'active',
  MachineStatus.inactive: 'inactive',
  MachineStatus.decommissioned: 'decommissioned',
};

_$MachineHierarchyImpl _$$MachineHierarchyImplFromJson(
        Map<String, dynamic> json) =>
    _$MachineHierarchyImpl(
      plants: (json['plants'] as List<dynamic>)
          .map((e) => Plant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MachineHierarchyImplToJson(
        _$MachineHierarchyImpl instance) =>
    <String, dynamic>{
      'plants': instance.plants,
    };
