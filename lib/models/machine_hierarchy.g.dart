// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machine_hierarchy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantImpl _$$PlantImplFromJson(Map<String, dynamic> json) => _$PlantImpl(
      plantId: json['plant_id'] as String,
      plantName: json['plant_name'] as String,
      location: json['location'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$PlantImplToJson(_$PlantImpl instance) =>
    <String, dynamic>{
      'plant_id': instance.plantId,
      'plant_name': instance.plantName,
      'location': instance.location,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$UnitImpl _$$UnitImplFromJson(Map<String, dynamic> json) => _$UnitImpl(
      unitId: json['unit_id'] as String,
      plantId: json['plant_id'] as String,
      unitName: json['unit_name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$UnitImplToJson(_$UnitImpl instance) =>
    <String, dynamic>{
      'unit_id': instance.unitId,
      'plant_id': instance.plantId,
      'unit_name': instance.unitName,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$SegmentImpl _$$SegmentImplFromJson(Map<String, dynamic> json) =>
    _$SegmentImpl(
      segmentId: json['segment_id'] as String,
      unitId: json['unit_id'] as String,
      segmentName: json['segment_name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$SegmentImplToJson(_$SegmentImpl instance) =>
    <String, dynamic>{
      'segment_id': instance.segmentId,
      'unit_id': instance.unitId,
      'segment_name': instance.segmentName,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$LineImpl _$$LineImplFromJson(Map<String, dynamic> json) => _$LineImpl(
      lineId: json['line_id'] as String,
      segmentId: json['segment_id'] as String,
      lineName: json['line_name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$LineImplToJson(_$LineImpl instance) =>
    <String, dynamic>{
      'line_id': instance.lineId,
      'segment_id': instance.segmentId,
      'line_name': instance.lineName,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$MachineImpl _$$MachineImplFromJson(Map<String, dynamic> json) =>
    _$MachineImpl(
      machineId: json['machine_id'] as String,
      lineId: json['line_id'] as String,
      machineName: json['machine_name'] as String,
      machineType: json['machine_type'] as String?,
      machineLocation: json['machine_location'] as String?,
      status: $enumDecode(_$MachineStatusEnumMap, json['machine_status']),
      commissionedOn: json['commissioned_on'] == null
          ? null
          : DateTime.parse(json['commissioned_on'] as String),
      lastMaintenanceDate: json['last_maintenance_date'] == null
          ? null
          : DateTime.parse(json['last_maintenance_date'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$MachineImplToJson(_$MachineImpl instance) =>
    <String, dynamic>{
      'machine_id': instance.machineId,
      'line_id': instance.lineId,
      'machine_name': instance.machineName,
      'machine_type': instance.machineType,
      'machine_location': instance.machineLocation,
      'machine_status': _$MachineStatusEnumMap[instance.status]!,
      'commissioned_on': instance.commissionedOn?.toIso8601String(),
      'last_maintenance_date': instance.lastMaintenanceDate?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
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
