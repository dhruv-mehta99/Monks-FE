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
  String get plantId => throw _privateConstructorUsedError;
  String get plantName => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
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
      {String plantId,
      String plantName,
      String? location,
      DateTime createdAt,
      DateTime updatedAt});
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
      {String plantId,
      String plantName,
      String? location,
      DateTime createdAt,
      DateTime updatedAt});
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
      {required this.plantId,
      required this.plantName,
      this.location,
      required this.createdAt,
      required this.updatedAt});

  factory _$PlantImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantImplFromJson(json);

  @override
  final String plantId;
  @override
  final String plantName;
  @override
  final String? location;
  @override
  final DateTime createdAt;
  @override
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
      {required final String plantId,
      required final String plantName,
      final String? location,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$PlantImpl;

  factory _Plant.fromJson(Map<String, dynamic> json) = _$PlantImpl.fromJson;

  @override
  String get plantId;
  @override
  String get plantName;
  @override
  String? get location;
  @override
  DateTime get createdAt;
  @override
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
  String get unitId => throw _privateConstructorUsedError;
  String get plantId => throw _privateConstructorUsedError;
  String get unitName => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
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
      {String unitId,
      String plantId,
      String unitName,
      DateTime createdAt,
      DateTime updatedAt});
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
      {String unitId,
      String plantId,
      String unitName,
      DateTime createdAt,
      DateTime updatedAt});
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
      {required this.unitId,
      required this.plantId,
      required this.unitName,
      required this.createdAt,
      required this.updatedAt});

  factory _$UnitImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitImplFromJson(json);

  @override
  final String unitId;
  @override
  final String plantId;
  @override
  final String unitName;
  @override
  final DateTime createdAt;
  @override
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
      {required final String unitId,
      required final String plantId,
      required final String unitName,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$UnitImpl;

  factory _Unit.fromJson(Map<String, dynamic> json) = _$UnitImpl.fromJson;

  @override
  String get unitId;
  @override
  String get plantId;
  @override
  String get unitName;
  @override
  DateTime get createdAt;
  @override
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
  String get segmentId => throw _privateConstructorUsedError;
  String get unitId => throw _privateConstructorUsedError;
  String get segmentName => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
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
      {String segmentId,
      String unitId,
      String segmentName,
      DateTime createdAt,
      DateTime updatedAt});
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
      {String segmentId,
      String unitId,
      String segmentName,
      DateTime createdAt,
      DateTime updatedAt});
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
      {required this.segmentId,
      required this.unitId,
      required this.segmentName,
      required this.createdAt,
      required this.updatedAt});

  factory _$SegmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SegmentImplFromJson(json);

  @override
  final String segmentId;
  @override
  final String unitId;
  @override
  final String segmentName;
  @override
  final DateTime createdAt;
  @override
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
      {required final String segmentId,
      required final String unitId,
      required final String segmentName,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$SegmentImpl;

  factory _Segment.fromJson(Map<String, dynamic> json) = _$SegmentImpl.fromJson;

  @override
  String get segmentId;
  @override
  String get unitId;
  @override
  String get segmentName;
  @override
  DateTime get createdAt;
  @override
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
  String get lineId => throw _privateConstructorUsedError;
  String get segmentId => throw _privateConstructorUsedError;
  String get lineName => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
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
      {String lineId,
      String segmentId,
      String lineName,
      DateTime createdAt,
      DateTime updatedAt});
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
      {String lineId,
      String segmentId,
      String lineName,
      DateTime createdAt,
      DateTime updatedAt});
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
      {required this.lineId,
      required this.segmentId,
      required this.lineName,
      required this.createdAt,
      required this.updatedAt});

  factory _$LineImpl.fromJson(Map<String, dynamic> json) =>
      _$$LineImplFromJson(json);

  @override
  final String lineId;
  @override
  final String segmentId;
  @override
  final String lineName;
  @override
  final DateTime createdAt;
  @override
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
      {required final String lineId,
      required final String segmentId,
      required final String lineName,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$LineImpl;

  factory _Line.fromJson(Map<String, dynamic> json) = _$LineImpl.fromJson;

  @override
  String get lineId;
  @override
  String get segmentId;
  @override
  String get lineName;
  @override
  DateTime get createdAt;
  @override
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
  String get machineId => throw _privateConstructorUsedError;
  String get lineId => throw _privateConstructorUsedError;
  String get machineName => throw _privateConstructorUsedError;
  MachineStatus get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
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
      {String machineId,
      String lineId,
      String machineName,
      MachineStatus status,
      DateTime createdAt,
      DateTime updatedAt});
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
    Object? status = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MachineStatus,
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
      {String machineId,
      String lineId,
      String machineName,
      MachineStatus status,
      DateTime createdAt,
      DateTime updatedAt});
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
    Object? status = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MachineStatus,
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
      {required this.machineId,
      required this.lineId,
      required this.machineName,
      required this.status,
      required this.createdAt,
      required this.updatedAt});

  factory _$MachineImpl.fromJson(Map<String, dynamic> json) =>
      _$$MachineImplFromJson(json);

  @override
  final String machineId;
  @override
  final String lineId;
  @override
  final String machineName;
  @override
  final MachineStatus status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Machine(machineId: $machineId, lineId: $lineId, machineName: $machineName, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
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
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, machineId, lineId, machineName,
      status, createdAt, updatedAt);

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
      {required final String machineId,
      required final String lineId,
      required final String machineName,
      required final MachineStatus status,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$MachineImpl;

  factory _Machine.fromJson(Map<String, dynamic> json) = _$MachineImpl.fromJson;

  @override
  String get machineId;
  @override
  String get lineId;
  @override
  String get machineName;
  @override
  MachineStatus get status;
  @override
  DateTime get createdAt;
  @override
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
