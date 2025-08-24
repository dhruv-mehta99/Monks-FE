import 'package:freezed_annotation/freezed_annotation.dart';

part 'machine_hierarchy.freezed.dart';
part 'machine_hierarchy.g.dart';

@freezed
class Plant with _$Plant {
  const factory Plant({
    required String plantId,
    required String plantName,
    String? location,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Plant;

  factory Plant.fromJson(Map<String, dynamic> json) => _$PlantFromJson(json);
}

@freezed
class Unit with _$Unit {
  const factory Unit({
    required String unitId,
    required String plantId,
    required String unitName,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Unit;

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);
}

@freezed
class Segment with _$Segment {
  const factory Segment({
    required String segmentId,
    required String unitId,
    required String segmentName,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Segment;

  factory Segment.fromJson(Map<String, dynamic> json) => _$SegmentFromJson(json);
}

@freezed
class Line with _$Line {
  const factory Line({
    required String lineId,
    required String segmentId,
    required String lineName,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Line;

  factory Line.fromJson(Map<String, dynamic> json) => _$LineFromJson(json);
}

@freezed
class Machine with _$Machine {
  const factory Machine({
    required String machineId,
    required String lineId,
    required String machineName,
    required MachineStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
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
