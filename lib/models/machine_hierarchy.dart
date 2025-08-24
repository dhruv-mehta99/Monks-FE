import 'package:freezed_annotation/freezed_annotation.dart';

part 'machine_hierarchy.freezed.dart';
part 'machine_hierarchy.g.dart';

@freezed
class Plant with _$Plant {
  const factory Plant({
    @JsonKey(name: 'plant_id') required String plantId,
    @JsonKey(name: 'plant_name') required String plantName,
    String? location,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Plant;

  factory Plant.fromJson(Map<String, dynamic> json) => _$PlantFromJson(json);
}

@freezed
class Unit with _$Unit {
  const factory Unit({
    @JsonKey(name: 'unit_id') required String unitId,
    @JsonKey(name: 'plant_id') required String plantId,
    @JsonKey(name: 'unit_name') required String unitName,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Unit;

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);
}

@freezed
class Segment with _$Segment {
  const factory Segment({
    @JsonKey(name: 'segment_id') required String segmentId,
    @JsonKey(name: 'unit_id') required String unitId,
    @JsonKey(name: 'segment_name') required String segmentName,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Segment;

  factory Segment.fromJson(Map<String, dynamic> json) => _$SegmentFromJson(json);
}

@freezed
class Line with _$Line {
  const factory Line({
    @JsonKey(name: 'line_id') required String lineId,
    @JsonKey(name: 'segment_id') required String segmentId,
    @JsonKey(name: 'line_name') required String lineName,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Line;

  factory Line.fromJson(Map<String, dynamic> json) => _$LineFromJson(json);
}

@freezed
class Machine with _$Machine {
  const factory Machine({
    @JsonKey(name: 'machine_id') required String machineId,
    @JsonKey(name: 'line_id') required String lineId,
    @JsonKey(name: 'machine_name') required String machineName,
    @JsonKey(name: 'machine_type') String? machineType,
    @JsonKey(name: 'machine_location') String? machineLocation,
    @JsonKey(name: 'machine_status') required MachineStatus status,
    @JsonKey(name: 'commissioned_on') DateTime? commissionedOn,
    @JsonKey(name: 'last_maintenance_date') DateTime? lastMaintenanceDate,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Machine;

  factory Machine.fromJson(Map<String, dynamic> json) => _$MachineFromJson(json);
}

enum MachineStatus {
  @JsonValue('active')
  active,
  @JsonValue('inactive')
  inactive,
  @JsonValue('decommissioned')
  decommissioned,
}

@freezed
class MachineHierarchy with _$MachineHierarchy {
  const factory MachineHierarchy({
    required List<Plant> plants,
  }) = _MachineHierarchy;

  factory MachineHierarchy.fromJson(Map<String, dynamic> json) =>
      _$MachineHierarchyFromJson(json);
}
