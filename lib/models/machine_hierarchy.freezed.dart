// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'machine_hierarchy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Plant _$PlantFromJson(Map<String, dynamic> json) {
  return _Plant.fromJson(json);
}

/// @nodoc
mixin _$Plant {
  @JsonKey(name: 'plant_id')
  String get plantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'plant_name')
  String get plantName => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlantCopyWith<Plant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantCopyWith<$Res> {
  factory $PlantCopyWith(Plant value, $Res Function(Plant) then) =
      _$PlantCopyWithImpl<$Res, Plant>;
  @useResult
  $Res call(
      {@JsonKey(name: 'plant_id') String plantId,
      @JsonKey(name: 'plant_name') String plantName,
      String? location,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$PlantCopyWithImpl<$Res, $Val extends Plant>
    implements $PlantCopyWith<$Res> {
  _$PlantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plantId = null,
    Object? plantName = null,
    Object? location = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      plantName: null == plantName
          ? _value.plantName
          : plantName // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlantImplCopyWith<$Res> implements $PlantCopyWith<$Res> {
  factory _$$PlantImplCopyWith(
          _$PlantImpl value, $Res Function(_$PlantImpl) then) =
      __$$PlantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'plant_id') String plantId,
      @JsonKey(name: 'plant_name') String plantName,
      String? location,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$PlantImplCopyWithImpl<$Res>
    extends _$PlantCopyWithImpl<$Res, _$PlantImpl>
    implements _$$PlantImplCopyWith<$Res> {
  __$$PlantImplCopyWithImpl(
      _$PlantImpl _value, $Res Function(_$PlantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plantId = null,
    Object? plantName = null,
    Object? location = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PlantImpl(
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      plantName: null == plantName
          ? _value.plantName
          : plantName // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantImpl implements _Plant {
  const _$PlantImpl(
      {@JsonKey(name: 'plant_id') required this.plantId,
      @JsonKey(name: 'plant_name') required this.plantName,
      this.location,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$PlantImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantImplFromJson(json);

  @override
  @JsonKey(name: 'plant_id')
  final String plantId;
  @override
  @JsonKey(name: 'plant_name')
  final String plantName;
  @override
  final String? location;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Plant(plantId: $plantId, plantName: $plantName, location: $location, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantImpl &&
            (identical(other.plantId, plantId) || other.plantId == plantId) &&
            (identical(other.plantName, plantName) ||
                other.plantName == plantName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, plantId, plantName, location, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantImplCopyWith<_$PlantImpl> get copyWith =>
      __$$PlantImplCopyWithImpl<_$PlantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantImplToJson(
      this,
    );
  }
}

abstract class _Plant implements Plant {
  const factory _Plant(
          {@JsonKey(name: 'plant_id') required final String plantId,
          @JsonKey(name: 'plant_name') required final String plantName,
          final String? location,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$PlantImpl;

  factory _Plant.fromJson(Map<String, dynamic> json) = _$PlantImpl.fromJson;

  @override
  @JsonKey(name: 'plant_id')
  String get plantId;
  @override
  @JsonKey(name: 'plant_name')
  String get plantName;
  @override
  String? get location;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PlantImplCopyWith<_$PlantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Unit _$UnitFromJson(Map<String, dynamic> json) {
  return _Unit.fromJson(json);
}

/// @nodoc
mixin _$Unit {
  @JsonKey(name: 'unit_id')
  String get unitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'plant_id')
  String get plantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_name')
  String get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitCopyWith<Unit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitCopyWith<$Res> {
  factory $UnitCopyWith(Unit value, $Res Function(Unit) then) =
      _$UnitCopyWithImpl<$Res, Unit>;
  @useResult
  $Res call(
      {@JsonKey(name: 'unit_id') String unitId,
      @JsonKey(name: 'plant_id') String plantId,
      @JsonKey(name: 'unit_name') String unitName,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$UnitCopyWithImpl<$Res, $Val extends Unit>
    implements $UnitCopyWith<$Res> {
  _$UnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitId = null,
    Object? plantId = null,
    Object? unitName = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String,
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitImplCopyWith<$Res> implements $UnitCopyWith<$Res> {
  factory _$$UnitImplCopyWith(
          _$UnitImpl value, $Res Function(_$UnitImpl) then) =
      __$$UnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'unit_id') String unitId,
      @JsonKey(name: 'plant_id') String plantId,
      @JsonKey(name: 'unit_name') String unitName,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$UnitImplCopyWithImpl<$Res>
    extends _$UnitCopyWithImpl<$Res, _$UnitImpl>
    implements _$$UnitImplCopyWith<$Res> {
  __$$UnitImplCopyWithImpl(_$UnitImpl _value, $Res Function(_$UnitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitId = null,
    Object? plantId = null,
    Object? unitName = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$UnitImpl(
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String,
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitImpl implements _Unit {
  const _$UnitImpl(
      {@JsonKey(name: 'unit_id') required this.unitId,
      @JsonKey(name: 'plant_id') required this.plantId,
      @JsonKey(name: 'unit_name') required this.unitName,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$UnitImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitImplFromJson(json);

  @override
  @JsonKey(name: 'unit_id')
  final String unitId;
  @override
  @JsonKey(name: 'plant_id')
  final String plantId;
  @override
  @JsonKey(name: 'unit_name')
  final String unitName;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Unit(unitId: $unitId, plantId: $plantId, unitName: $unitName, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitImpl &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.plantId, plantId) || other.plantId == plantId) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, unitId, plantId, unitName, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitImplCopyWith<_$UnitImpl> get copyWith =>
      __$$UnitImplCopyWithImpl<_$UnitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitImplToJson(
      this,
    );
  }
}

abstract class _Unit implements Unit {
  const factory _Unit(
          {@JsonKey(name: 'unit_id') required final String unitId,
          @JsonKey(name: 'plant_id') required final String plantId,
          @JsonKey(name: 'unit_name') required final String unitName,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$UnitImpl;

  factory _Unit.fromJson(Map<String, dynamic> json) = _$UnitImpl.fromJson;

  @override
  @JsonKey(name: 'unit_id')
  String get unitId;
  @override
  @JsonKey(name: 'plant_id')
  String get plantId;
  @override
  @JsonKey(name: 'unit_name')
  String get unitName;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$UnitImplCopyWith<_$UnitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Segment _$SegmentFromJson(Map<String, dynamic> json) {
  return _Segment.fromJson(json);
}

/// @nodoc
mixin _$Segment {
  @JsonKey(name: 'segment_id')
  String get segmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_id')
  String get unitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'segment_name')
  String get segmentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SegmentCopyWith<Segment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SegmentCopyWith<$Res> {
  factory $SegmentCopyWith(Segment value, $Res Function(Segment) then) =
      _$SegmentCopyWithImpl<$Res, Segment>;
  @useResult
  $Res call(
      {@JsonKey(name: 'segment_id') String segmentId,
      @JsonKey(name: 'unit_id') String unitId,
      @JsonKey(name: 'segment_name') String segmentName,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$SegmentCopyWithImpl<$Res, $Val extends Segment>
    implements $SegmentCopyWith<$Res> {
  _$SegmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? segmentId = null,
    Object? unitId = null,
    Object? segmentName = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      segmentId: null == segmentId
          ? _value.segmentId
          : segmentId // ignore: cast_nullable_to_non_nullable
              as String,
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String,
      segmentName: null == segmentName
          ? _value.segmentName
          : segmentName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SegmentImplCopyWith<$Res> implements $SegmentCopyWith<$Res> {
  factory _$$SegmentImplCopyWith(
          _$SegmentImpl value, $Res Function(_$SegmentImpl) then) =
      __$$SegmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'segment_id') String segmentId,
      @JsonKey(name: 'unit_id') String unitId,
      @JsonKey(name: 'segment_name') String segmentName,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$SegmentImplCopyWithImpl<$Res>
    extends _$SegmentCopyWithImpl<$Res, _$SegmentImpl>
    implements _$$SegmentImplCopyWith<$Res> {
  __$$SegmentImplCopyWithImpl(
      _$SegmentImpl _value, $Res Function(_$SegmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? segmentId = null,
    Object? unitId = null,
    Object? segmentName = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SegmentImpl(
      segmentId: null == segmentId
          ? _value.segmentId
          : segmentId // ignore: cast_nullable_to_non_nullable
              as String,
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String,
      segmentName: null == segmentName
          ? _value.segmentName
          : segmentName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SegmentImpl implements _Segment {
  const _$SegmentImpl(
      {@JsonKey(name: 'segment_id') required this.segmentId,
      @JsonKey(name: 'unit_id') required this.unitId,
      @JsonKey(name: 'segment_name') required this.segmentName,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$SegmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SegmentImplFromJson(json);

  @override
  @JsonKey(name: 'segment_id')
  final String segmentId;
  @override
  @JsonKey(name: 'unit_id')
  final String unitId;
  @override
  @JsonKey(name: 'segment_name')
  final String segmentName;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Segment(segmentId: $segmentId, unitId: $unitId, segmentName: $segmentName, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SegmentImpl &&
            (identical(other.segmentId, segmentId) ||
                other.segmentId == segmentId) &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.segmentName, segmentName) ||
                other.segmentName == segmentName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, segmentId, unitId, segmentName, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SegmentImplCopyWith<_$SegmentImpl> get copyWith =>
      __$$SegmentImplCopyWithImpl<_$SegmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SegmentImplToJson(
      this,
    );
  }
}

abstract class _Segment implements Segment {
  const factory _Segment(
          {@JsonKey(name: 'segment_id') required final String segmentId,
          @JsonKey(name: 'unit_id') required final String unitId,
          @JsonKey(name: 'segment_name') required final String segmentName,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$SegmentImpl;

  factory _Segment.fromJson(Map<String, dynamic> json) = _$SegmentImpl.fromJson;

  @override
  @JsonKey(name: 'segment_id')
  String get segmentId;
  @override
  @JsonKey(name: 'unit_id')
  String get unitId;
  @override
  @JsonKey(name: 'segment_name')
  String get segmentName;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SegmentImplCopyWith<_$SegmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Line _$LineFromJson(Map<String, dynamic> json) {
  return _Line.fromJson(json);
}

/// @nodoc
mixin _$Line {
  @JsonKey(name: 'line_id')
  String get lineId => throw _privateConstructorUsedError;
  @JsonKey(name: 'segment_id')
  String get segmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'line_name')
  String get lineName => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineCopyWith<Line> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineCopyWith<$Res> {
  factory $LineCopyWith(Line value, $Res Function(Line) then) =
      _$LineCopyWithImpl<$Res, Line>;
  @useResult
  $Res call(
      {@JsonKey(name: 'line_id') String lineId,
      @JsonKey(name: 'segment_id') String segmentId,
      @JsonKey(name: 'line_name') String lineName,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$LineCopyWithImpl<$Res, $Val extends Line>
    implements $LineCopyWith<$Res> {
  _$LineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineId = null,
    Object? segmentId = null,
    Object? lineName = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      lineId: null == lineId
          ? _value.lineId
          : lineId // ignore: cast_nullable_to_non_nullable
              as String,
      segmentId: null == segmentId
          ? _value.segmentId
          : segmentId // ignore: cast_nullable_to_non_nullable
              as String,
      lineName: null == lineName
          ? _value.lineName
          : lineName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LineImplCopyWith<$Res> implements $LineCopyWith<$Res> {
  factory _$$LineImplCopyWith(
          _$LineImpl value, $Res Function(_$LineImpl) then) =
      __$$LineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'line_id') String lineId,
      @JsonKey(name: 'segment_id') String segmentId,
      @JsonKey(name: 'line_name') String lineName,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$LineImplCopyWithImpl<$Res>
    extends _$LineCopyWithImpl<$Res, _$LineImpl>
    implements _$$LineImplCopyWith<$Res> {
  __$$LineImplCopyWithImpl(_$LineImpl _value, $Res Function(_$LineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineId = null,
    Object? segmentId = null,
    Object? lineName = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$LineImpl(
      lineId: null == lineId
          ? _value.lineId
          : lineId // ignore: cast_nullable_to_non_nullable
              as String,
      segmentId: null == segmentId
          ? _value.segmentId
          : segmentId // ignore: cast_nullable_to_non_nullable
              as String,
      lineName: null == lineName
          ? _value.lineName
          : lineName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LineImpl implements _Line {
  const _$LineImpl(
      {@JsonKey(name: 'line_id') required this.lineId,
      @JsonKey(name: 'segment_id') required this.segmentId,
      @JsonKey(name: 'line_name') required this.lineName,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$LineImpl.fromJson(Map<String, dynamic> json) =>
      _$$LineImplFromJson(json);

  @override
  @JsonKey(name: 'line_id')
  final String lineId;
  @override
  @JsonKey(name: 'segment_id')
  final String segmentId;
  @override
  @JsonKey(name: 'line_name')
  final String lineName;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Line(lineId: $lineId, segmentId: $segmentId, lineName: $lineName, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LineImpl &&
            (identical(other.lineId, lineId) || other.lineId == lineId) &&
            (identical(other.segmentId, segmentId) ||
                other.segmentId == segmentId) &&
            (identical(other.lineName, lineName) ||
                other.lineName == lineName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, lineId, segmentId, lineName, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LineImplCopyWith<_$LineImpl> get copyWith =>
      __$$LineImplCopyWithImpl<_$LineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LineImplToJson(
      this,
    );
  }
}

abstract class _Line implements Line {
  const factory _Line(
          {@JsonKey(name: 'line_id') required final String lineId,
          @JsonKey(name: 'segment_id') required final String segmentId,
          @JsonKey(name: 'line_name') required final String lineName,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$LineImpl;

  factory _Line.fromJson(Map<String, dynamic> json) = _$LineImpl.fromJson;

  @override
  @JsonKey(name: 'line_id')
  String get lineId;
  @override
  @JsonKey(name: 'segment_id')
  String get segmentId;
  @override
  @JsonKey(name: 'line_name')
  String get lineName;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$LineImplCopyWith<_$LineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Machine _$MachineFromJson(Map<String, dynamic> json) {
  return _Machine.fromJson(json);
}

/// @nodoc
mixin _$Machine {
  @JsonKey(name: 'machine_id')
  String get machineId => throw _privateConstructorUsedError;
  @JsonKey(name: 'line_id')
  String get lineId => throw _privateConstructorUsedError;
  @JsonKey(name: 'machine_name')
  String get machineName => throw _privateConstructorUsedError;
  @JsonKey(name: 'machine_type')
  String? get machineType => throw _privateConstructorUsedError;
  @JsonKey(name: 'machine_location')
  String? get machineLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'machine_status')
  MachineStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'commissioned_on')
  DateTime? get commissionedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_maintenance_date')
  DateTime? get lastMaintenanceDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MachineCopyWith<Machine> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MachineCopyWith<$Res> {
  factory $MachineCopyWith(Machine value, $Res Function(Machine) then) =
      _$MachineCopyWithImpl<$Res, Machine>;
  @useResult
  $Res call(
      {@JsonKey(name: 'machine_id') String machineId,
      @JsonKey(name: 'line_id') String lineId,
      @JsonKey(name: 'machine_name') String machineName,
      @JsonKey(name: 'machine_type') String? machineType,
      @JsonKey(name: 'machine_location') String? machineLocation,
      @JsonKey(name: 'machine_status') MachineStatus status,
      @JsonKey(name: 'commissioned_on') DateTime? commissionedOn,
      @JsonKey(name: 'last_maintenance_date') DateTime? lastMaintenanceDate,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$MachineCopyWithImpl<$Res, $Val extends Machine>
    implements $MachineCopyWith<$Res> {
  _$MachineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? lineId = null,
    Object? machineName = null,
    Object? machineType = freezed,
    Object? machineLocation = freezed,
    Object? status = null,
    Object? commissionedOn = freezed,
    Object? lastMaintenanceDate = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      lineId: null == lineId
          ? _value.lineId
          : lineId // ignore: cast_nullable_to_non_nullable
              as String,
      machineName: null == machineName
          ? _value.machineName
          : machineName // ignore: cast_nullable_to_non_nullable
              as String,
      machineType: freezed == machineType
          ? _value.machineType
          : machineType // ignore: cast_nullable_to_non_nullable
              as String?,
      machineLocation: freezed == machineLocation
          ? _value.machineLocation
          : machineLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MachineStatus,
      commissionedOn: freezed == commissionedOn
          ? _value.commissionedOn
          : commissionedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMaintenanceDate: freezed == lastMaintenanceDate
          ? _value.lastMaintenanceDate
          : lastMaintenanceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MachineImplCopyWith<$Res> implements $MachineCopyWith<$Res> {
  factory _$$MachineImplCopyWith(
          _$MachineImpl value, $Res Function(_$MachineImpl) then) =
      __$$MachineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'machine_id') String machineId,
      @JsonKey(name: 'line_id') String lineId,
      @JsonKey(name: 'machine_name') String machineName,
      @JsonKey(name: 'machine_type') String? machineType,
      @JsonKey(name: 'machine_location') String? machineLocation,
      @JsonKey(name: 'machine_status') MachineStatus status,
      @JsonKey(name: 'commissioned_on') DateTime? commissionedOn,
      @JsonKey(name: 'last_maintenance_date') DateTime? lastMaintenanceDate,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$MachineImplCopyWithImpl<$Res>
    extends _$MachineCopyWithImpl<$Res, _$MachineImpl>
    implements _$$MachineImplCopyWith<$Res> {
  __$$MachineImplCopyWithImpl(
      _$MachineImpl _value, $Res Function(_$MachineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? lineId = null,
    Object? machineName = null,
    Object? machineType = freezed,
    Object? machineLocation = freezed,
    Object? status = null,
    Object? commissionedOn = freezed,
    Object? lastMaintenanceDate = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$MachineImpl(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      lineId: null == lineId
          ? _value.lineId
          : lineId // ignore: cast_nullable_to_non_nullable
              as String,
      machineName: null == machineName
          ? _value.machineName
          : machineName // ignore: cast_nullable_to_non_nullable
              as String,
      machineType: freezed == machineType
          ? _value.machineType
          : machineType // ignore: cast_nullable_to_non_nullable
              as String?,
      machineLocation: freezed == machineLocation
          ? _value.machineLocation
          : machineLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MachineStatus,
      commissionedOn: freezed == commissionedOn
          ? _value.commissionedOn
          : commissionedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMaintenanceDate: freezed == lastMaintenanceDate
          ? _value.lastMaintenanceDate
          : lastMaintenanceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MachineImpl implements _Machine {
  const _$MachineImpl(
      {@JsonKey(name: 'machine_id') required this.machineId,
      @JsonKey(name: 'line_id') required this.lineId,
      @JsonKey(name: 'machine_name') required this.machineName,
      @JsonKey(name: 'machine_type') this.machineType,
      @JsonKey(name: 'machine_location') this.machineLocation,
      @JsonKey(name: 'machine_status') required this.status,
      @JsonKey(name: 'commissioned_on') this.commissionedOn,
      @JsonKey(name: 'last_maintenance_date') this.lastMaintenanceDate,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$MachineImpl.fromJson(Map<String, dynamic> json) =>
      _$$MachineImplFromJson(json);

  @override
  @JsonKey(name: 'machine_id')
  final String machineId;
  @override
  @JsonKey(name: 'line_id')
  final String lineId;
  @override
  @JsonKey(name: 'machine_name')
  final String machineName;
  @override
  @JsonKey(name: 'machine_type')
  final String? machineType;
  @override
  @JsonKey(name: 'machine_location')
  final String? machineLocation;
  @override
  @JsonKey(name: 'machine_status')
  final MachineStatus status;
  @override
  @JsonKey(name: 'commissioned_on')
  final DateTime? commissionedOn;
  @override
  @JsonKey(name: 'last_maintenance_date')
  final DateTime? lastMaintenanceDate;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Machine(machineId: $machineId, lineId: $lineId, machineName: $machineName, machineType: $machineType, machineLocation: $machineLocation, status: $status, commissionedOn: $commissionedOn, lastMaintenanceDate: $lastMaintenanceDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MachineImpl &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.lineId, lineId) || other.lineId == lineId) &&
            (identical(other.machineName, machineName) ||
                other.machineName == machineName) &&
            (identical(other.machineType, machineType) ||
                other.machineType == machineType) &&
            (identical(other.machineLocation, machineLocation) ||
                other.machineLocation == machineLocation) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.commissionedOn, commissionedOn) ||
                other.commissionedOn == commissionedOn) &&
            (identical(other.lastMaintenanceDate, lastMaintenanceDate) ||
                other.lastMaintenanceDate == lastMaintenanceDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      machineId,
      lineId,
      machineName,
      machineType,
      machineLocation,
      status,
      commissionedOn,
      lastMaintenanceDate,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MachineImplCopyWith<_$MachineImpl> get copyWith =>
      __$$MachineImplCopyWithImpl<_$MachineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MachineImplToJson(
      this,
    );
  }
}

abstract class _Machine implements Machine {
  const factory _Machine(
          {@JsonKey(name: 'machine_id') required final String machineId,
          @JsonKey(name: 'line_id') required final String lineId,
          @JsonKey(name: 'machine_name') required final String machineName,
          @JsonKey(name: 'machine_type') final String? machineType,
          @JsonKey(name: 'machine_location') final String? machineLocation,
          @JsonKey(name: 'machine_status') required final MachineStatus status,
          @JsonKey(name: 'commissioned_on') final DateTime? commissionedOn,
          @JsonKey(name: 'last_maintenance_date')
          final DateTime? lastMaintenanceDate,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$MachineImpl;

  factory _Machine.fromJson(Map<String, dynamic> json) = _$MachineImpl.fromJson;

  @override
  @JsonKey(name: 'machine_id')
  String get machineId;
  @override
  @JsonKey(name: 'line_id')
  String get lineId;
  @override
  @JsonKey(name: 'machine_name')
  String get machineName;
  @override
  @JsonKey(name: 'machine_type')
  String? get machineType;
  @override
  @JsonKey(name: 'machine_location')
  String? get machineLocation;
  @override
  @JsonKey(name: 'machine_status')
  MachineStatus get status;
  @override
  @JsonKey(name: 'commissioned_on')
  DateTime? get commissionedOn;
  @override
  @JsonKey(name: 'last_maintenance_date')
  DateTime? get lastMaintenanceDate;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$MachineImplCopyWith<_$MachineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MachineHierarchy _$MachineHierarchyFromJson(Map<String, dynamic> json) {
  return _MachineHierarchy.fromJson(json);
}

/// @nodoc
mixin _$MachineHierarchy {
  List<Plant> get plants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MachineHierarchyCopyWith<MachineHierarchy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MachineHierarchyCopyWith<$Res> {
  factory $MachineHierarchyCopyWith(
          MachineHierarchy value, $Res Function(MachineHierarchy) then) =
      _$MachineHierarchyCopyWithImpl<$Res, MachineHierarchy>;
  @useResult
  $Res call({List<Plant> plants});
}

/// @nodoc
class _$MachineHierarchyCopyWithImpl<$Res, $Val extends MachineHierarchy>
    implements $MachineHierarchyCopyWith<$Res> {
  _$MachineHierarchyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plants = null,
  }) {
    return _then(_value.copyWith(
      plants: null == plants
          ? _value.plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<Plant>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MachineHierarchyImplCopyWith<$Res>
    implements $MachineHierarchyCopyWith<$Res> {
  factory _$$MachineHierarchyImplCopyWith(_$MachineHierarchyImpl value,
          $Res Function(_$MachineHierarchyImpl) then) =
      __$$MachineHierarchyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Plant> plants});
}

/// @nodoc
class __$$MachineHierarchyImplCopyWithImpl<$Res>
    extends _$MachineHierarchyCopyWithImpl<$Res, _$MachineHierarchyImpl>
    implements _$$MachineHierarchyImplCopyWith<$Res> {
  __$$MachineHierarchyImplCopyWithImpl(_$MachineHierarchyImpl _value,
      $Res Function(_$MachineHierarchyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plants = null,
  }) {
    return _then(_$MachineHierarchyImpl(
      plants: null == plants
          ? _value._plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<Plant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MachineHierarchyImpl implements _MachineHierarchy {
  const _$MachineHierarchyImpl({required final List<Plant> plants})
      : _plants = plants;

  factory _$MachineHierarchyImpl.fromJson(Map<String, dynamic> json) =>
      _$$MachineHierarchyImplFromJson(json);

  final List<Plant> _plants;
  @override
  List<Plant> get plants {
    if (_plants is EqualUnmodifiableListView) return _plants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plants);
  }

  @override
  String toString() {
    return 'MachineHierarchy(plants: $plants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MachineHierarchyImpl &&
            const DeepCollectionEquality().equals(other._plants, _plants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_plants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MachineHierarchyImplCopyWith<_$MachineHierarchyImpl> get copyWith =>
      __$$MachineHierarchyImplCopyWithImpl<_$MachineHierarchyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MachineHierarchyImplToJson(
      this,
    );
  }
}

abstract class _MachineHierarchy implements MachineHierarchy {
  const factory _MachineHierarchy({required final List<Plant> plants}) =
      _$MachineHierarchyImpl;

  factory _MachineHierarchy.fromJson(Map<String, dynamic> json) =
      _$MachineHierarchyImpl.fromJson;

  @override
  List<Plant> get plants;
  @override
  @JsonKey(ignore: true)
  _$$MachineHierarchyImplCopyWith<_$MachineHierarchyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
