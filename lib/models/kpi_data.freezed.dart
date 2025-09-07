// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kpi_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KpiData _$KpiDataFromJson(Map<String, dynamic> json) {
  return _KpiData.fromJson(json);
}

/// @nodoc
mixin _$KpiData {
  String get machineId => throw _privateConstructorUsedError;
  String get kpiType => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KpiDataCopyWith<KpiData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KpiDataCopyWith<$Res> {
  factory $KpiDataCopyWith(KpiData value, $Res Function(KpiData) then) =
      _$KpiDataCopyWithImpl<$Res, KpiData>;
  @useResult
  $Res call(
      {String machineId,
      String kpiType,
      DateTime timestamp,
      double value,
      String unit});
}

/// @nodoc
class _$KpiDataCopyWithImpl<$Res, $Val extends KpiData>
    implements $KpiDataCopyWith<$Res> {
  _$KpiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? kpiType = null,
    Object? timestamp = null,
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      kpiType: null == kpiType
          ? _value.kpiType
          : kpiType // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KpiDataImplCopyWith<$Res> implements $KpiDataCopyWith<$Res> {
  factory _$$KpiDataImplCopyWith(
          _$KpiDataImpl value, $Res Function(_$KpiDataImpl) then) =
      __$$KpiDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String machineId,
      String kpiType,
      DateTime timestamp,
      double value,
      String unit});
}

/// @nodoc
class __$$KpiDataImplCopyWithImpl<$Res>
    extends _$KpiDataCopyWithImpl<$Res, _$KpiDataImpl>
    implements _$$KpiDataImplCopyWith<$Res> {
  __$$KpiDataImplCopyWithImpl(
      _$KpiDataImpl _value, $Res Function(_$KpiDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? kpiType = null,
    Object? timestamp = null,
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_$KpiDataImpl(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      kpiType: null == kpiType
          ? _value.kpiType
          : kpiType // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KpiDataImpl implements _KpiData {
  const _$KpiDataImpl(
      {required this.machineId,
      required this.kpiType,
      required this.timestamp,
      required this.value,
      required this.unit});

  factory _$KpiDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$KpiDataImplFromJson(json);

  @override
  final String machineId;
  @override
  final String kpiType;
  @override
  final DateTime timestamp;
  @override
  final double value;
  @override
  final String unit;

  @override
  String toString() {
    return 'KpiData(machineId: $machineId, kpiType: $kpiType, timestamp: $timestamp, value: $value, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KpiDataImpl &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.kpiType, kpiType) || other.kpiType == kpiType) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, machineId, kpiType, timestamp, value, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KpiDataImplCopyWith<_$KpiDataImpl> get copyWith =>
      __$$KpiDataImplCopyWithImpl<_$KpiDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KpiDataImplToJson(
      this,
    );
  }
}

abstract class _KpiData implements KpiData {
  const factory _KpiData(
      {required final String machineId,
      required final String kpiType,
      required final DateTime timestamp,
      required final double value,
      required final String unit}) = _$KpiDataImpl;

  factory _KpiData.fromJson(Map<String, dynamic> json) = _$KpiDataImpl.fromJson;

  @override
  String get machineId;
  @override
  String get kpiType;
  @override
  DateTime get timestamp;
  @override
  double get value;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$KpiDataImplCopyWith<_$KpiDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KpiDefinition _$KpiDefinitionFromJson(Map<String, dynamic> json) {
  return _KpiDefinition.fromJson(json);
}

/// @nodoc
mixin _$KpiDefinition {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  KpiCategory get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KpiDefinitionCopyWith<KpiDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KpiDefinitionCopyWith<$Res> {
  factory $KpiDefinitionCopyWith(
          KpiDefinition value, $Res Function(KpiDefinition) then) =
      _$KpiDefinitionCopyWithImpl<$Res, KpiDefinition>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String unit,
      KpiCategory category});
}

/// @nodoc
class _$KpiDefinitionCopyWithImpl<$Res, $Val extends KpiDefinition>
    implements $KpiDefinitionCopyWith<$Res> {
  _$KpiDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? unit = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as KpiCategory,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KpiDefinitionImplCopyWith<$Res>
    implements $KpiDefinitionCopyWith<$Res> {
  factory _$$KpiDefinitionImplCopyWith(
          _$KpiDefinitionImpl value, $Res Function(_$KpiDefinitionImpl) then) =
      __$$KpiDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String unit,
      KpiCategory category});
}

/// @nodoc
class __$$KpiDefinitionImplCopyWithImpl<$Res>
    extends _$KpiDefinitionCopyWithImpl<$Res, _$KpiDefinitionImpl>
    implements _$$KpiDefinitionImplCopyWith<$Res> {
  __$$KpiDefinitionImplCopyWithImpl(
      _$KpiDefinitionImpl _value, $Res Function(_$KpiDefinitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? unit = null,
    Object? category = null,
  }) {
    return _then(_$KpiDefinitionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as KpiCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KpiDefinitionImpl implements _KpiDefinition {
  const _$KpiDefinitionImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.unit,
      required this.category});

  factory _$KpiDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$KpiDefinitionImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String unit;
  @override
  final KpiCategory category;

  @override
  String toString() {
    return 'KpiDefinition(id: $id, name: $name, description: $description, unit: $unit, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KpiDefinitionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, unit, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KpiDefinitionImplCopyWith<_$KpiDefinitionImpl> get copyWith =>
      __$$KpiDefinitionImplCopyWithImpl<_$KpiDefinitionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KpiDefinitionImplToJson(
      this,
    );
  }
}

abstract class _KpiDefinition implements KpiDefinition {
  const factory _KpiDefinition(
      {required final String id,
      required final String name,
      required final String description,
      required final String unit,
      required final KpiCategory category}) = _$KpiDefinitionImpl;

  factory _KpiDefinition.fromJson(Map<String, dynamic> json) =
      _$KpiDefinitionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get unit;
  @override
  KpiCategory get category;
  @override
  @JsonKey(ignore: true)
  _$$KpiDefinitionImplCopyWith<_$KpiDefinitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OutputAggregateResponse _$OutputAggregateResponseFromJson(
    Map<String, dynamic> json) {
  return _OutputAggregateResponse.fromJson(json);
}

/// @nodoc
mixin _$OutputAggregateResponse {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  String get groupBy => throw _privateConstructorUsedError;
  List<OutputResult> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutputAggregateResponseCopyWith<OutputAggregateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutputAggregateResponseCopyWith<$Res> {
  factory $OutputAggregateResponseCopyWith(OutputAggregateResponse value,
          $Res Function(OutputAggregateResponse) then) =
      _$OutputAggregateResponseCopyWithImpl<$Res, OutputAggregateResponse>;
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      String groupBy,
      List<OutputResult> results});
}

/// @nodoc
class _$OutputAggregateResponseCopyWithImpl<$Res,
        $Val extends OutputAggregateResponse>
    implements $OutputAggregateResponseCopyWith<$Res> {
  _$OutputAggregateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? groupBy = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      groupBy: null == groupBy
          ? _value.groupBy
          : groupBy // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<OutputResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutputAggregateResponseImplCopyWith<$Res>
    implements $OutputAggregateResponseCopyWith<$Res> {
  factory _$$OutputAggregateResponseImplCopyWith(
          _$OutputAggregateResponseImpl value,
          $Res Function(_$OutputAggregateResponseImpl) then) =
      __$$OutputAggregateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      String groupBy,
      List<OutputResult> results});
}

/// @nodoc
class __$$OutputAggregateResponseImplCopyWithImpl<$Res>
    extends _$OutputAggregateResponseCopyWithImpl<$Res,
        _$OutputAggregateResponseImpl>
    implements _$$OutputAggregateResponseImplCopyWith<$Res> {
  __$$OutputAggregateResponseImplCopyWithImpl(
      _$OutputAggregateResponseImpl _value,
      $Res Function(_$OutputAggregateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? groupBy = null,
    Object? results = null,
  }) {
    return _then(_$OutputAggregateResponseImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      groupBy: null == groupBy
          ? _value.groupBy
          : groupBy // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<OutputResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutputAggregateResponseImpl implements _OutputAggregateResponse {
  const _$OutputAggregateResponseImpl(
      {required this.startTime,
      required this.endTime,
      required this.groupBy,
      required final List<OutputResult> results})
      : _results = results;

  factory _$OutputAggregateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutputAggregateResponseImplFromJson(json);

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final String groupBy;
  final List<OutputResult> _results;
  @override
  List<OutputResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'OutputAggregateResponse(startTime: $startTime, endTime: $endTime, groupBy: $groupBy, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutputAggregateResponseImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.groupBy, groupBy) || other.groupBy == groupBy) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, groupBy,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutputAggregateResponseImplCopyWith<_$OutputAggregateResponseImpl>
      get copyWith => __$$OutputAggregateResponseImplCopyWithImpl<
          _$OutputAggregateResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutputAggregateResponseImplToJson(
      this,
    );
  }
}

abstract class _OutputAggregateResponse implements OutputAggregateResponse {
  const factory _OutputAggregateResponse(
          {required final DateTime startTime,
          required final DateTime endTime,
          required final String groupBy,
          required final List<OutputResult> results}) =
      _$OutputAggregateResponseImpl;

  factory _OutputAggregateResponse.fromJson(Map<String, dynamic> json) =
      _$OutputAggregateResponseImpl.fromJson;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  String get groupBy;
  @override
  List<OutputResult> get results;
  @override
  @JsonKey(ignore: true)
  _$$OutputAggregateResponseImplCopyWith<_$OutputAggregateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OutputResult _$OutputResultFromJson(Map<String, dynamic> json) {
  return _OutputResult.fromJson(json);
}

/// @nodoc
mixin _$OutputResult {
  String get machineId => throw _privateConstructorUsedError;
  int? get totalOutputQty => throw _privateConstructorUsedError;
  int? get rejectedOutputQty => throw _privateConstructorUsedError;
  int? get goodOutputQty => throw _privateConstructorUsedError;
  double? get yieldRatio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutputResultCopyWith<OutputResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutputResultCopyWith<$Res> {
  factory $OutputResultCopyWith(
          OutputResult value, $Res Function(OutputResult) then) =
      _$OutputResultCopyWithImpl<$Res, OutputResult>;
  @useResult
  $Res call(
      {String machineId,
      int? totalOutputQty,
      int? rejectedOutputQty,
      int? goodOutputQty,
      double? yieldRatio});
}

/// @nodoc
class _$OutputResultCopyWithImpl<$Res, $Val extends OutputResult>
    implements $OutputResultCopyWith<$Res> {
  _$OutputResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? totalOutputQty = freezed,
    Object? rejectedOutputQty = freezed,
    Object? goodOutputQty = freezed,
    Object? yieldRatio = freezed,
  }) {
    return _then(_value.copyWith(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      totalOutputQty: freezed == totalOutputQty
          ? _value.totalOutputQty
          : totalOutputQty // ignore: cast_nullable_to_non_nullable
              as int?,
      rejectedOutputQty: freezed == rejectedOutputQty
          ? _value.rejectedOutputQty
          : rejectedOutputQty // ignore: cast_nullable_to_non_nullable
              as int?,
      goodOutputQty: freezed == goodOutputQty
          ? _value.goodOutputQty
          : goodOutputQty // ignore: cast_nullable_to_non_nullable
              as int?,
      yieldRatio: freezed == yieldRatio
          ? _value.yieldRatio
          : yieldRatio // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutputResultImplCopyWith<$Res>
    implements $OutputResultCopyWith<$Res> {
  factory _$$OutputResultImplCopyWith(
          _$OutputResultImpl value, $Res Function(_$OutputResultImpl) then) =
      __$$OutputResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String machineId,
      int? totalOutputQty,
      int? rejectedOutputQty,
      int? goodOutputQty,
      double? yieldRatio});
}

/// @nodoc
class __$$OutputResultImplCopyWithImpl<$Res>
    extends _$OutputResultCopyWithImpl<$Res, _$OutputResultImpl>
    implements _$$OutputResultImplCopyWith<$Res> {
  __$$OutputResultImplCopyWithImpl(
      _$OutputResultImpl _value, $Res Function(_$OutputResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? totalOutputQty = freezed,
    Object? rejectedOutputQty = freezed,
    Object? goodOutputQty = freezed,
    Object? yieldRatio = freezed,
  }) {
    return _then(_$OutputResultImpl(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      totalOutputQty: freezed == totalOutputQty
          ? _value.totalOutputQty
          : totalOutputQty // ignore: cast_nullable_to_non_nullable
              as int?,
      rejectedOutputQty: freezed == rejectedOutputQty
          ? _value.rejectedOutputQty
          : rejectedOutputQty // ignore: cast_nullable_to_non_nullable
              as int?,
      goodOutputQty: freezed == goodOutputQty
          ? _value.goodOutputQty
          : goodOutputQty // ignore: cast_nullable_to_non_nullable
              as int?,
      yieldRatio: freezed == yieldRatio
          ? _value.yieldRatio
          : yieldRatio // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutputResultImpl implements _OutputResult {
  const _$OutputResultImpl(
      {required this.machineId,
      this.totalOutputQty,
      this.rejectedOutputQty,
      this.goodOutputQty,
      this.yieldRatio});

  factory _$OutputResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutputResultImplFromJson(json);

  @override
  final String machineId;
  @override
  final int? totalOutputQty;
  @override
  final int? rejectedOutputQty;
  @override
  final int? goodOutputQty;
  @override
  final double? yieldRatio;

  @override
  String toString() {
    return 'OutputResult(machineId: $machineId, totalOutputQty: $totalOutputQty, rejectedOutputQty: $rejectedOutputQty, goodOutputQty: $goodOutputQty, yieldRatio: $yieldRatio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutputResultImpl &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.totalOutputQty, totalOutputQty) ||
                other.totalOutputQty == totalOutputQty) &&
            (identical(other.rejectedOutputQty, rejectedOutputQty) ||
                other.rejectedOutputQty == rejectedOutputQty) &&
            (identical(other.goodOutputQty, goodOutputQty) ||
                other.goodOutputQty == goodOutputQty) &&
            (identical(other.yieldRatio, yieldRatio) ||
                other.yieldRatio == yieldRatio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, machineId, totalOutputQty,
      rejectedOutputQty, goodOutputQty, yieldRatio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutputResultImplCopyWith<_$OutputResultImpl> get copyWith =>
      __$$OutputResultImplCopyWithImpl<_$OutputResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutputResultImplToJson(
      this,
    );
  }
}

abstract class _OutputResult implements OutputResult {
  const factory _OutputResult(
      {required final String machineId,
      final int? totalOutputQty,
      final int? rejectedOutputQty,
      final int? goodOutputQty,
      final double? yieldRatio}) = _$OutputResultImpl;

  factory _OutputResult.fromJson(Map<String, dynamic> json) =
      _$OutputResultImpl.fromJson;

  @override
  String get machineId;
  @override
  int? get totalOutputQty;
  @override
  int? get rejectedOutputQty;
  @override
  int? get goodOutputQty;
  @override
  double? get yieldRatio;
  @override
  @JsonKey(ignore: true)
  _$$OutputResultImplCopyWith<_$OutputResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OutputTimeseriesResponse _$OutputTimeseriesResponseFromJson(
    Map<String, dynamic> json) {
  return _OutputTimeseriesResponse.fromJson(json);
}

/// @nodoc
mixin _$OutputTimeseriesResponse {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  String get interval => throw _privateConstructorUsedError;
  List<OutputTimeseries> get series => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutputTimeseriesResponseCopyWith<OutputTimeseriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutputTimeseriesResponseCopyWith<$Res> {
  factory $OutputTimeseriesResponseCopyWith(OutputTimeseriesResponse value,
          $Res Function(OutputTimeseriesResponse) then) =
      _$OutputTimeseriesResponseCopyWithImpl<$Res, OutputTimeseriesResponse>;
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      String interval,
      List<OutputTimeseries> series});
}

/// @nodoc
class _$OutputTimeseriesResponseCopyWithImpl<$Res,
        $Val extends OutputTimeseriesResponse>
    implements $OutputTimeseriesResponseCopyWith<$Res> {
  _$OutputTimeseriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? interval = null,
    Object? series = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as List<OutputTimeseries>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutputTimeseriesResponseImplCopyWith<$Res>
    implements $OutputTimeseriesResponseCopyWith<$Res> {
  factory _$$OutputTimeseriesResponseImplCopyWith(
          _$OutputTimeseriesResponseImpl value,
          $Res Function(_$OutputTimeseriesResponseImpl) then) =
      __$$OutputTimeseriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      String interval,
      List<OutputTimeseries> series});
}

/// @nodoc
class __$$OutputTimeseriesResponseImplCopyWithImpl<$Res>
    extends _$OutputTimeseriesResponseCopyWithImpl<$Res,
        _$OutputTimeseriesResponseImpl>
    implements _$$OutputTimeseriesResponseImplCopyWith<$Res> {
  __$$OutputTimeseriesResponseImplCopyWithImpl(
      _$OutputTimeseriesResponseImpl _value,
      $Res Function(_$OutputTimeseriesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? interval = null,
    Object? series = null,
  }) {
    return _then(_$OutputTimeseriesResponseImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      series: null == series
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as List<OutputTimeseries>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutputTimeseriesResponseImpl implements _OutputTimeseriesResponse {
  const _$OutputTimeseriesResponseImpl(
      {required this.startTime,
      required this.endTime,
      required this.interval,
      required final List<OutputTimeseries> series})
      : _series = series;

  factory _$OutputTimeseriesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutputTimeseriesResponseImplFromJson(json);

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final String interval;
  final List<OutputTimeseries> _series;
  @override
  List<OutputTimeseries> get series {
    if (_series is EqualUnmodifiableListView) return _series;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_series);
  }

  @override
  String toString() {
    return 'OutputTimeseriesResponse(startTime: $startTime, endTime: $endTime, interval: $interval, series: $series)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutputTimeseriesResponseImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            const DeepCollectionEquality().equals(other._series, _series));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, interval,
      const DeepCollectionEquality().hash(_series));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutputTimeseriesResponseImplCopyWith<_$OutputTimeseriesResponseImpl>
      get copyWith => __$$OutputTimeseriesResponseImplCopyWithImpl<
          _$OutputTimeseriesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutputTimeseriesResponseImplToJson(
      this,
    );
  }
}

abstract class _OutputTimeseriesResponse implements OutputTimeseriesResponse {
  const factory _OutputTimeseriesResponse(
          {required final DateTime startTime,
          required final DateTime endTime,
          required final String interval,
          required final List<OutputTimeseries> series}) =
      _$OutputTimeseriesResponseImpl;

  factory _OutputTimeseriesResponse.fromJson(Map<String, dynamic> json) =
      _$OutputTimeseriesResponseImpl.fromJson;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  String get interval;
  @override
  List<OutputTimeseries> get series;
  @override
  @JsonKey(ignore: true)
  _$$OutputTimeseriesResponseImplCopyWith<_$OutputTimeseriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OutputTimeseries _$OutputTimeseriesFromJson(Map<String, dynamic> json) {
  return _OutputTimeseries.fromJson(json);
}

/// @nodoc
mixin _$OutputTimeseries {
  String get machineId => throw _privateConstructorUsedError;
  List<OutputDataPoint> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutputTimeseriesCopyWith<OutputTimeseries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutputTimeseriesCopyWith<$Res> {
  factory $OutputTimeseriesCopyWith(
          OutputTimeseries value, $Res Function(OutputTimeseries) then) =
      _$OutputTimeseriesCopyWithImpl<$Res, OutputTimeseries>;
  @useResult
  $Res call({String machineId, List<OutputDataPoint> data});
}

/// @nodoc
class _$OutputTimeseriesCopyWithImpl<$Res, $Val extends OutputTimeseries>
    implements $OutputTimeseriesCopyWith<$Res> {
  _$OutputTimeseriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OutputDataPoint>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutputTimeseriesImplCopyWith<$Res>
    implements $OutputTimeseriesCopyWith<$Res> {
  factory _$$OutputTimeseriesImplCopyWith(_$OutputTimeseriesImpl value,
          $Res Function(_$OutputTimeseriesImpl) then) =
      __$$OutputTimeseriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String machineId, List<OutputDataPoint> data});
}

/// @nodoc
class __$$OutputTimeseriesImplCopyWithImpl<$Res>
    extends _$OutputTimeseriesCopyWithImpl<$Res, _$OutputTimeseriesImpl>
    implements _$$OutputTimeseriesImplCopyWith<$Res> {
  __$$OutputTimeseriesImplCopyWithImpl(_$OutputTimeseriesImpl _value,
      $Res Function(_$OutputTimeseriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? data = null,
  }) {
    return _then(_$OutputTimeseriesImpl(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OutputDataPoint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutputTimeseriesImpl implements _OutputTimeseries {
  const _$OutputTimeseriesImpl(
      {required this.machineId, required final List<OutputDataPoint> data})
      : _data = data;

  factory _$OutputTimeseriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutputTimeseriesImplFromJson(json);

  @override
  final String machineId;
  final List<OutputDataPoint> _data;
  @override
  List<OutputDataPoint> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'OutputTimeseries(machineId: $machineId, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutputTimeseriesImpl &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, machineId, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutputTimeseriesImplCopyWith<_$OutputTimeseriesImpl> get copyWith =>
      __$$OutputTimeseriesImplCopyWithImpl<_$OutputTimeseriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutputTimeseriesImplToJson(
      this,
    );
  }
}

abstract class _OutputTimeseries implements OutputTimeseries {
  const factory _OutputTimeseries(
      {required final String machineId,
      required final List<OutputDataPoint> data}) = _$OutputTimeseriesImpl;

  factory _OutputTimeseries.fromJson(Map<String, dynamic> json) =
      _$OutputTimeseriesImpl.fromJson;

  @override
  String get machineId;
  @override
  List<OutputDataPoint> get data;
  @override
  @JsonKey(ignore: true)
  _$$OutputTimeseriesImplCopyWith<_$OutputTimeseriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OutputDataPoint _$OutputDataPointFromJson(Map<String, dynamic> json) {
  return _OutputDataPoint.fromJson(json);
}

/// @nodoc
mixin _$OutputDataPoint {
  DateTime get timestamp => throw _privateConstructorUsedError;
  int? get totalOutputQty => throw _privateConstructorUsedError;
  int? get rejectedOutputQty => throw _privateConstructorUsedError;
  int? get goodOutputQty => throw _privateConstructorUsedError;
  double? get yieldRatio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutputDataPointCopyWith<OutputDataPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutputDataPointCopyWith<$Res> {
  factory $OutputDataPointCopyWith(
          OutputDataPoint value, $Res Function(OutputDataPoint) then) =
      _$OutputDataPointCopyWithImpl<$Res, OutputDataPoint>;
  @useResult
  $Res call(
      {DateTime timestamp,
      int? totalOutputQty,
      int? rejectedOutputQty,
      int? goodOutputQty,
      double? yieldRatio});
}

/// @nodoc
class _$OutputDataPointCopyWithImpl<$Res, $Val extends OutputDataPoint>
    implements $OutputDataPointCopyWith<$Res> {
  _$OutputDataPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? totalOutputQty = freezed,
    Object? rejectedOutputQty = freezed,
    Object? goodOutputQty = freezed,
    Object? yieldRatio = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalOutputQty: freezed == totalOutputQty
          ? _value.totalOutputQty
          : totalOutputQty // ignore: cast_nullable_to_non_nullable
              as int?,
      rejectedOutputQty: freezed == rejectedOutputQty
          ? _value.rejectedOutputQty
          : rejectedOutputQty // ignore: cast_nullable_to_non_nullable
              as int?,
      goodOutputQty: freezed == goodOutputQty
          ? _value.goodOutputQty
          : goodOutputQty // ignore: cast_nullable_to_non_nullable
              as int?,
      yieldRatio: freezed == yieldRatio
          ? _value.yieldRatio
          : yieldRatio // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutputDataPointImplCopyWith<$Res>
    implements $OutputDataPointCopyWith<$Res> {
  factory _$$OutputDataPointImplCopyWith(_$OutputDataPointImpl value,
          $Res Function(_$OutputDataPointImpl) then) =
      __$$OutputDataPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime timestamp,
      int? totalOutputQty,
      int? rejectedOutputQty,
      int? goodOutputQty,
      double? yieldRatio});
}

/// @nodoc
class __$$OutputDataPointImplCopyWithImpl<$Res>
    extends _$OutputDataPointCopyWithImpl<$Res, _$OutputDataPointImpl>
    implements _$$OutputDataPointImplCopyWith<$Res> {
  __$$OutputDataPointImplCopyWithImpl(
      _$OutputDataPointImpl _value, $Res Function(_$OutputDataPointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? totalOutputQty = freezed,
    Object? rejectedOutputQty = freezed,
    Object? goodOutputQty = freezed,
    Object? yieldRatio = freezed,
  }) {
    return _then(_$OutputDataPointImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalOutputQty: freezed == totalOutputQty
          ? _value.totalOutputQty
          : totalOutputQty // ignore: cast_nullable_to_non_nullable
              as int?,
      rejectedOutputQty: freezed == rejectedOutputQty
          ? _value.rejectedOutputQty
          : rejectedOutputQty // ignore: cast_nullable_to_non_nullable
              as int?,
      goodOutputQty: freezed == goodOutputQty
          ? _value.goodOutputQty
          : goodOutputQty // ignore: cast_nullable_to_non_nullable
              as int?,
      yieldRatio: freezed == yieldRatio
          ? _value.yieldRatio
          : yieldRatio // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutputDataPointImpl extends _OutputDataPoint {
  const _$OutputDataPointImpl(
      {required this.timestamp,
      this.totalOutputQty,
      this.rejectedOutputQty,
      this.goodOutputQty,
      this.yieldRatio})
      : super._();

  factory _$OutputDataPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutputDataPointImplFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final int? totalOutputQty;
  @override
  final int? rejectedOutputQty;
  @override
  final int? goodOutputQty;
  @override
  final double? yieldRatio;

  @override
  String toString() {
    return 'OutputDataPoint(timestamp: $timestamp, totalOutputQty: $totalOutputQty, rejectedOutputQty: $rejectedOutputQty, goodOutputQty: $goodOutputQty, yieldRatio: $yieldRatio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutputDataPointImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.totalOutputQty, totalOutputQty) ||
                other.totalOutputQty == totalOutputQty) &&
            (identical(other.rejectedOutputQty, rejectedOutputQty) ||
                other.rejectedOutputQty == rejectedOutputQty) &&
            (identical(other.goodOutputQty, goodOutputQty) ||
                other.goodOutputQty == goodOutputQty) &&
            (identical(other.yieldRatio, yieldRatio) ||
                other.yieldRatio == yieldRatio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timestamp, totalOutputQty,
      rejectedOutputQty, goodOutputQty, yieldRatio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutputDataPointImplCopyWith<_$OutputDataPointImpl> get copyWith =>
      __$$OutputDataPointImplCopyWithImpl<_$OutputDataPointImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutputDataPointImplToJson(
      this,
    );
  }
}

abstract class _OutputDataPoint extends OutputDataPoint {
  const factory _OutputDataPoint(
      {required final DateTime timestamp,
      final int? totalOutputQty,
      final int? rejectedOutputQty,
      final int? goodOutputQty,
      final double? yieldRatio}) = _$OutputDataPointImpl;
  const _OutputDataPoint._() : super._();

  factory _OutputDataPoint.fromJson(Map<String, dynamic> json) =
      _$OutputDataPointImpl.fromJson;

  @override
  DateTime get timestamp;
  @override
  int? get totalOutputQty;
  @override
  int? get rejectedOutputQty;
  @override
  int? get goodOutputQty;
  @override
  double? get yieldRatio;
  @override
  @JsonKey(ignore: true)
  _$$OutputDataPointImplCopyWith<_$OutputDataPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PerformanceAggregateResponse _$PerformanceAggregateResponseFromJson(
    Map<String, dynamic> json) {
  return _PerformanceAggregateResponse.fromJson(json);
}

/// @nodoc
mixin _$PerformanceAggregateResponse {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  String get groupBy => throw _privateConstructorUsedError;
  List<PerformanceResult> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformanceAggregateResponseCopyWith<PerformanceAggregateResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformanceAggregateResponseCopyWith<$Res> {
  factory $PerformanceAggregateResponseCopyWith(
          PerformanceAggregateResponse value,
          $Res Function(PerformanceAggregateResponse) then) =
      _$PerformanceAggregateResponseCopyWithImpl<$Res,
          PerformanceAggregateResponse>;
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      String groupBy,
      List<PerformanceResult> results});
}

/// @nodoc
class _$PerformanceAggregateResponseCopyWithImpl<$Res,
        $Val extends PerformanceAggregateResponse>
    implements $PerformanceAggregateResponseCopyWith<$Res> {
  _$PerformanceAggregateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? groupBy = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      groupBy: null == groupBy
          ? _value.groupBy
          : groupBy // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PerformanceResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PerformanceAggregateResponseImplCopyWith<$Res>
    implements $PerformanceAggregateResponseCopyWith<$Res> {
  factory _$$PerformanceAggregateResponseImplCopyWith(
          _$PerformanceAggregateResponseImpl value,
          $Res Function(_$PerformanceAggregateResponseImpl) then) =
      __$$PerformanceAggregateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      String groupBy,
      List<PerformanceResult> results});
}

/// @nodoc
class __$$PerformanceAggregateResponseImplCopyWithImpl<$Res>
    extends _$PerformanceAggregateResponseCopyWithImpl<$Res,
        _$PerformanceAggregateResponseImpl>
    implements _$$PerformanceAggregateResponseImplCopyWith<$Res> {
  __$$PerformanceAggregateResponseImplCopyWithImpl(
      _$PerformanceAggregateResponseImpl _value,
      $Res Function(_$PerformanceAggregateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? groupBy = null,
    Object? results = null,
  }) {
    return _then(_$PerformanceAggregateResponseImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      groupBy: null == groupBy
          ? _value.groupBy
          : groupBy // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PerformanceResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformanceAggregateResponseImpl
    implements _PerformanceAggregateResponse {
  const _$PerformanceAggregateResponseImpl(
      {required this.startTime,
      required this.endTime,
      required this.groupBy,
      required final List<PerformanceResult> results})
      : _results = results;

  factory _$PerformanceAggregateResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PerformanceAggregateResponseImplFromJson(json);

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final String groupBy;
  final List<PerformanceResult> _results;
  @override
  List<PerformanceResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PerformanceAggregateResponse(startTime: $startTime, endTime: $endTime, groupBy: $groupBy, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformanceAggregateResponseImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.groupBy, groupBy) || other.groupBy == groupBy) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, groupBy,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformanceAggregateResponseImplCopyWith<
          _$PerformanceAggregateResponseImpl>
      get copyWith => __$$PerformanceAggregateResponseImplCopyWithImpl<
          _$PerformanceAggregateResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformanceAggregateResponseImplToJson(
      this,
    );
  }
}

abstract class _PerformanceAggregateResponse
    implements PerformanceAggregateResponse {
  const factory _PerformanceAggregateResponse(
          {required final DateTime startTime,
          required final DateTime endTime,
          required final String groupBy,
          required final List<PerformanceResult> results}) =
      _$PerformanceAggregateResponseImpl;

  factory _PerformanceAggregateResponse.fromJson(Map<String, dynamic> json) =
      _$PerformanceAggregateResponseImpl.fromJson;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  String get groupBy;
  @override
  List<PerformanceResult> get results;
  @override
  @JsonKey(ignore: true)
  _$$PerformanceAggregateResponseImplCopyWith<
          _$PerformanceAggregateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PerformanceResult _$PerformanceResultFromJson(Map<String, dynamic> json) {
  return _PerformanceResult.fromJson(json);
}

/// @nodoc
mixin _$PerformanceResult {
  String get key => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformanceResultCopyWith<PerformanceResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformanceResultCopyWith<$Res> {
  factory $PerformanceResultCopyWith(
          PerformanceResult value, $Res Function(PerformanceResult) then) =
      _$PerformanceResultCopyWithImpl<$Res, PerformanceResult>;
  @useResult
  $Res call({String key, double value});
}

/// @nodoc
class _$PerformanceResultCopyWithImpl<$Res, $Val extends PerformanceResult>
    implements $PerformanceResultCopyWith<$Res> {
  _$PerformanceResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PerformanceResultImplCopyWith<$Res>
    implements $PerformanceResultCopyWith<$Res> {
  factory _$$PerformanceResultImplCopyWith(_$PerformanceResultImpl value,
          $Res Function(_$PerformanceResultImpl) then) =
      __$$PerformanceResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, double value});
}

/// @nodoc
class __$$PerformanceResultImplCopyWithImpl<$Res>
    extends _$PerformanceResultCopyWithImpl<$Res, _$PerformanceResultImpl>
    implements _$$PerformanceResultImplCopyWith<$Res> {
  __$$PerformanceResultImplCopyWithImpl(_$PerformanceResultImpl _value,
      $Res Function(_$PerformanceResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$PerformanceResultImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformanceResultImpl implements _PerformanceResult {
  const _$PerformanceResultImpl({required this.key, required this.value});

  factory _$PerformanceResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformanceResultImplFromJson(json);

  @override
  final String key;
  @override
  final double value;

  @override
  String toString() {
    return 'PerformanceResult(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformanceResultImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformanceResultImplCopyWith<_$PerformanceResultImpl> get copyWith =>
      __$$PerformanceResultImplCopyWithImpl<_$PerformanceResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformanceResultImplToJson(
      this,
    );
  }
}

abstract class _PerformanceResult implements PerformanceResult {
  const factory _PerformanceResult(
      {required final String key,
      required final double value}) = _$PerformanceResultImpl;

  factory _PerformanceResult.fromJson(Map<String, dynamic> json) =
      _$PerformanceResultImpl.fromJson;

  @override
  String get key;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$PerformanceResultImplCopyWith<_$PerformanceResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PerformanceTimeseriesResponse _$PerformanceTimeseriesResponseFromJson(
    Map<String, dynamic> json) {
  return _PerformanceTimeseriesResponse.fromJson(json);
}

/// @nodoc
mixin _$PerformanceTimeseriesResponse {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  String get interval => throw _privateConstructorUsedError;
  List<PerformanceTimeseries> get series => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformanceTimeseriesResponseCopyWith<PerformanceTimeseriesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformanceTimeseriesResponseCopyWith<$Res> {
  factory $PerformanceTimeseriesResponseCopyWith(
          PerformanceTimeseriesResponse value,
          $Res Function(PerformanceTimeseriesResponse) then) =
      _$PerformanceTimeseriesResponseCopyWithImpl<$Res,
          PerformanceTimeseriesResponse>;
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      String interval,
      List<PerformanceTimeseries> series});
}

/// @nodoc
class _$PerformanceTimeseriesResponseCopyWithImpl<$Res,
        $Val extends PerformanceTimeseriesResponse>
    implements $PerformanceTimeseriesResponseCopyWith<$Res> {
  _$PerformanceTimeseriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? interval = null,
    Object? series = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as List<PerformanceTimeseries>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PerformanceTimeseriesResponseImplCopyWith<$Res>
    implements $PerformanceTimeseriesResponseCopyWith<$Res> {
  factory _$$PerformanceTimeseriesResponseImplCopyWith(
          _$PerformanceTimeseriesResponseImpl value,
          $Res Function(_$PerformanceTimeseriesResponseImpl) then) =
      __$$PerformanceTimeseriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      String interval,
      List<PerformanceTimeseries> series});
}

/// @nodoc
class __$$PerformanceTimeseriesResponseImplCopyWithImpl<$Res>
    extends _$PerformanceTimeseriesResponseCopyWithImpl<$Res,
        _$PerformanceTimeseriesResponseImpl>
    implements _$$PerformanceTimeseriesResponseImplCopyWith<$Res> {
  __$$PerformanceTimeseriesResponseImplCopyWithImpl(
      _$PerformanceTimeseriesResponseImpl _value,
      $Res Function(_$PerformanceTimeseriesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? interval = null,
    Object? series = null,
  }) {
    return _then(_$PerformanceTimeseriesResponseImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      series: null == series
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as List<PerformanceTimeseries>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformanceTimeseriesResponseImpl
    implements _PerformanceTimeseriesResponse {
  const _$PerformanceTimeseriesResponseImpl(
      {required this.startTime,
      required this.endTime,
      required this.interval,
      required final List<PerformanceTimeseries> series})
      : _series = series;

  factory _$PerformanceTimeseriesResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PerformanceTimeseriesResponseImplFromJson(json);

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final String interval;
  final List<PerformanceTimeseries> _series;
  @override
  List<PerformanceTimeseries> get series {
    if (_series is EqualUnmodifiableListView) return _series;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_series);
  }

  @override
  String toString() {
    return 'PerformanceTimeseriesResponse(startTime: $startTime, endTime: $endTime, interval: $interval, series: $series)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformanceTimeseriesResponseImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            const DeepCollectionEquality().equals(other._series, _series));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, interval,
      const DeepCollectionEquality().hash(_series));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformanceTimeseriesResponseImplCopyWith<
          _$PerformanceTimeseriesResponseImpl>
      get copyWith => __$$PerformanceTimeseriesResponseImplCopyWithImpl<
          _$PerformanceTimeseriesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformanceTimeseriesResponseImplToJson(
      this,
    );
  }
}

abstract class _PerformanceTimeseriesResponse
    implements PerformanceTimeseriesResponse {
  const factory _PerformanceTimeseriesResponse(
          {required final DateTime startTime,
          required final DateTime endTime,
          required final String interval,
          required final List<PerformanceTimeseries> series}) =
      _$PerformanceTimeseriesResponseImpl;

  factory _PerformanceTimeseriesResponse.fromJson(Map<String, dynamic> json) =
      _$PerformanceTimeseriesResponseImpl.fromJson;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  String get interval;
  @override
  List<PerformanceTimeseries> get series;
  @override
  @JsonKey(ignore: true)
  _$$PerformanceTimeseriesResponseImplCopyWith<
          _$PerformanceTimeseriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PerformanceTimeseries _$PerformanceTimeseriesFromJson(
    Map<String, dynamic> json) {
  return _PerformanceTimeseries.fromJson(json);
}

/// @nodoc
mixin _$PerformanceTimeseries {
  String get machineId => throw _privateConstructorUsedError;
  List<PerformanceDataPoint> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformanceTimeseriesCopyWith<PerformanceTimeseries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformanceTimeseriesCopyWith<$Res> {
  factory $PerformanceTimeseriesCopyWith(PerformanceTimeseries value,
          $Res Function(PerformanceTimeseries) then) =
      _$PerformanceTimeseriesCopyWithImpl<$Res, PerformanceTimeseries>;
  @useResult
  $Res call({String machineId, List<PerformanceDataPoint> data});
}

/// @nodoc
class _$PerformanceTimeseriesCopyWithImpl<$Res,
        $Val extends PerformanceTimeseries>
    implements $PerformanceTimeseriesCopyWith<$Res> {
  _$PerformanceTimeseriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PerformanceDataPoint>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PerformanceTimeseriesImplCopyWith<$Res>
    implements $PerformanceTimeseriesCopyWith<$Res> {
  factory _$$PerformanceTimeseriesImplCopyWith(
          _$PerformanceTimeseriesImpl value,
          $Res Function(_$PerformanceTimeseriesImpl) then) =
      __$$PerformanceTimeseriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String machineId, List<PerformanceDataPoint> data});
}

/// @nodoc
class __$$PerformanceTimeseriesImplCopyWithImpl<$Res>
    extends _$PerformanceTimeseriesCopyWithImpl<$Res,
        _$PerformanceTimeseriesImpl>
    implements _$$PerformanceTimeseriesImplCopyWith<$Res> {
  __$$PerformanceTimeseriesImplCopyWithImpl(_$PerformanceTimeseriesImpl _value,
      $Res Function(_$PerformanceTimeseriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? data = null,
  }) {
    return _then(_$PerformanceTimeseriesImpl(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PerformanceDataPoint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformanceTimeseriesImpl implements _PerformanceTimeseries {
  const _$PerformanceTimeseriesImpl(
      {required this.machineId, required final List<PerformanceDataPoint> data})
      : _data = data;

  factory _$PerformanceTimeseriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformanceTimeseriesImplFromJson(json);

  @override
  final String machineId;
  final List<PerformanceDataPoint> _data;
  @override
  List<PerformanceDataPoint> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PerformanceTimeseries(machineId: $machineId, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformanceTimeseriesImpl &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, machineId, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformanceTimeseriesImplCopyWith<_$PerformanceTimeseriesImpl>
      get copyWith => __$$PerformanceTimeseriesImplCopyWithImpl<
          _$PerformanceTimeseriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformanceTimeseriesImplToJson(
      this,
    );
  }
}

abstract class _PerformanceTimeseries implements PerformanceTimeseries {
  const factory _PerformanceTimeseries(
          {required final String machineId,
          required final List<PerformanceDataPoint> data}) =
      _$PerformanceTimeseriesImpl;

  factory _PerformanceTimeseries.fromJson(Map<String, dynamic> json) =
      _$PerformanceTimeseriesImpl.fromJson;

  @override
  String get machineId;
  @override
  List<PerformanceDataPoint> get data;
  @override
  @JsonKey(ignore: true)
  _$$PerformanceTimeseriesImplCopyWith<_$PerformanceTimeseriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PerformanceDataPoint _$PerformanceDataPointFromJson(Map<String, dynamic> json) {
  return _PerformanceDataPoint.fromJson(json);
}

/// @nodoc
mixin _$PerformanceDataPoint {
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformanceDataPointCopyWith<PerformanceDataPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformanceDataPointCopyWith<$Res> {
  factory $PerformanceDataPointCopyWith(PerformanceDataPoint value,
          $Res Function(PerformanceDataPoint) then) =
      _$PerformanceDataPointCopyWithImpl<$Res, PerformanceDataPoint>;
  @useResult
  $Res call({DateTime timestamp, double value});
}

/// @nodoc
class _$PerformanceDataPointCopyWithImpl<$Res,
        $Val extends PerformanceDataPoint>
    implements $PerformanceDataPointCopyWith<$Res> {
  _$PerformanceDataPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PerformanceDataPointImplCopyWith<$Res>
    implements $PerformanceDataPointCopyWith<$Res> {
  factory _$$PerformanceDataPointImplCopyWith(_$PerformanceDataPointImpl value,
          $Res Function(_$PerformanceDataPointImpl) then) =
      __$$PerformanceDataPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime timestamp, double value});
}

/// @nodoc
class __$$PerformanceDataPointImplCopyWithImpl<$Res>
    extends _$PerformanceDataPointCopyWithImpl<$Res, _$PerformanceDataPointImpl>
    implements _$$PerformanceDataPointImplCopyWith<$Res> {
  __$$PerformanceDataPointImplCopyWithImpl(_$PerformanceDataPointImpl _value,
      $Res Function(_$PerformanceDataPointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? value = null,
  }) {
    return _then(_$PerformanceDataPointImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformanceDataPointImpl implements _PerformanceDataPoint {
  const _$PerformanceDataPointImpl(
      {required this.timestamp, required this.value});

  factory _$PerformanceDataPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformanceDataPointImplFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final double value;

  @override
  String toString() {
    return 'PerformanceDataPoint(timestamp: $timestamp, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformanceDataPointImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timestamp, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformanceDataPointImplCopyWith<_$PerformanceDataPointImpl>
      get copyWith =>
          __$$PerformanceDataPointImplCopyWithImpl<_$PerformanceDataPointImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformanceDataPointImplToJson(
      this,
    );
  }
}

abstract class _PerformanceDataPoint implements PerformanceDataPoint {
  const factory _PerformanceDataPoint(
      {required final DateTime timestamp,
      required final double value}) = _$PerformanceDataPointImpl;

  factory _PerformanceDataPoint.fromJson(Map<String, dynamic> json) =
      _$PerformanceDataPointImpl.fromJson;

  @override
  DateTime get timestamp;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$PerformanceDataPointImplCopyWith<_$PerformanceDataPointImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AvailabilityAggregateResponse _$AvailabilityAggregateResponseFromJson(
    Map<String, dynamic> json) {
  return _AvailabilityAggregateResponse.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityAggregateResponse {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  String get groupBy => throw _privateConstructorUsedError;
  List<AvailabilityResult> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityAggregateResponseCopyWith<AvailabilityAggregateResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityAggregateResponseCopyWith<$Res> {
  factory $AvailabilityAggregateResponseCopyWith(
          AvailabilityAggregateResponse value,
          $Res Function(AvailabilityAggregateResponse) then) =
      _$AvailabilityAggregateResponseCopyWithImpl<$Res,
          AvailabilityAggregateResponse>;
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      String groupBy,
      List<AvailabilityResult> results});
}

/// @nodoc
class _$AvailabilityAggregateResponseCopyWithImpl<$Res,
        $Val extends AvailabilityAggregateResponse>
    implements $AvailabilityAggregateResponseCopyWith<$Res> {
  _$AvailabilityAggregateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? groupBy = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      groupBy: null == groupBy
          ? _value.groupBy
          : groupBy // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<AvailabilityResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityAggregateResponseImplCopyWith<$Res>
    implements $AvailabilityAggregateResponseCopyWith<$Res> {
  factory _$$AvailabilityAggregateResponseImplCopyWith(
          _$AvailabilityAggregateResponseImpl value,
          $Res Function(_$AvailabilityAggregateResponseImpl) then) =
      __$$AvailabilityAggregateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      String groupBy,
      List<AvailabilityResult> results});
}

/// @nodoc
class __$$AvailabilityAggregateResponseImplCopyWithImpl<$Res>
    extends _$AvailabilityAggregateResponseCopyWithImpl<$Res,
        _$AvailabilityAggregateResponseImpl>
    implements _$$AvailabilityAggregateResponseImplCopyWith<$Res> {
  __$$AvailabilityAggregateResponseImplCopyWithImpl(
      _$AvailabilityAggregateResponseImpl _value,
      $Res Function(_$AvailabilityAggregateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? groupBy = null,
    Object? results = null,
  }) {
    return _then(_$AvailabilityAggregateResponseImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      groupBy: null == groupBy
          ? _value.groupBy
          : groupBy // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<AvailabilityResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityAggregateResponseImpl
    implements _AvailabilityAggregateResponse {
  const _$AvailabilityAggregateResponseImpl(
      {required this.startTime,
      required this.endTime,
      required this.groupBy,
      required final List<AvailabilityResult> results})
      : _results = results;

  factory _$AvailabilityAggregateResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AvailabilityAggregateResponseImplFromJson(json);

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final String groupBy;
  final List<AvailabilityResult> _results;
  @override
  List<AvailabilityResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'AvailabilityAggregateResponse(startTime: $startTime, endTime: $endTime, groupBy: $groupBy, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityAggregateResponseImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.groupBy, groupBy) || other.groupBy == groupBy) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, groupBy,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityAggregateResponseImplCopyWith<
          _$AvailabilityAggregateResponseImpl>
      get copyWith => __$$AvailabilityAggregateResponseImplCopyWithImpl<
          _$AvailabilityAggregateResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityAggregateResponseImplToJson(
      this,
    );
  }
}

abstract class _AvailabilityAggregateResponse
    implements AvailabilityAggregateResponse {
  const factory _AvailabilityAggregateResponse(
          {required final DateTime startTime,
          required final DateTime endTime,
          required final String groupBy,
          required final List<AvailabilityResult> results}) =
      _$AvailabilityAggregateResponseImpl;

  factory _AvailabilityAggregateResponse.fromJson(Map<String, dynamic> json) =
      _$AvailabilityAggregateResponseImpl.fromJson;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  String get groupBy;
  @override
  List<AvailabilityResult> get results;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityAggregateResponseImplCopyWith<
          _$AvailabilityAggregateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AvailabilityResult _$AvailabilityResultFromJson(Map<String, dynamic> json) {
  return _AvailabilityResult.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityResult {
  String get machineId => throw _privateConstructorUsedError;
  double get availabilityPercentage => throw _privateConstructorUsedError;
  double get uptimeHours => throw _privateConstructorUsedError;
  double get downtimeHours => throw _privateConstructorUsedError;
  int get totalShifts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityResultCopyWith<AvailabilityResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityResultCopyWith<$Res> {
  factory $AvailabilityResultCopyWith(
          AvailabilityResult value, $Res Function(AvailabilityResult) then) =
      _$AvailabilityResultCopyWithImpl<$Res, AvailabilityResult>;
  @useResult
  $Res call(
      {String machineId,
      double availabilityPercentage,
      double uptimeHours,
      double downtimeHours,
      int totalShifts});
}

/// @nodoc
class _$AvailabilityResultCopyWithImpl<$Res, $Val extends AvailabilityResult>
    implements $AvailabilityResultCopyWith<$Res> {
  _$AvailabilityResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? availabilityPercentage = null,
    Object? uptimeHours = null,
    Object? downtimeHours = null,
    Object? totalShifts = null,
  }) {
    return _then(_value.copyWith(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      availabilityPercentage: null == availabilityPercentage
          ? _value.availabilityPercentage
          : availabilityPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      uptimeHours: null == uptimeHours
          ? _value.uptimeHours
          : uptimeHours // ignore: cast_nullable_to_non_nullable
              as double,
      downtimeHours: null == downtimeHours
          ? _value.downtimeHours
          : downtimeHours // ignore: cast_nullable_to_non_nullable
              as double,
      totalShifts: null == totalShifts
          ? _value.totalShifts
          : totalShifts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityResultImplCopyWith<$Res>
    implements $AvailabilityResultCopyWith<$Res> {
  factory _$$AvailabilityResultImplCopyWith(_$AvailabilityResultImpl value,
          $Res Function(_$AvailabilityResultImpl) then) =
      __$$AvailabilityResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String machineId,
      double availabilityPercentage,
      double uptimeHours,
      double downtimeHours,
      int totalShifts});
}

/// @nodoc
class __$$AvailabilityResultImplCopyWithImpl<$Res>
    extends _$AvailabilityResultCopyWithImpl<$Res, _$AvailabilityResultImpl>
    implements _$$AvailabilityResultImplCopyWith<$Res> {
  __$$AvailabilityResultImplCopyWithImpl(_$AvailabilityResultImpl _value,
      $Res Function(_$AvailabilityResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? availabilityPercentage = null,
    Object? uptimeHours = null,
    Object? downtimeHours = null,
    Object? totalShifts = null,
  }) {
    return _then(_$AvailabilityResultImpl(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      availabilityPercentage: null == availabilityPercentage
          ? _value.availabilityPercentage
          : availabilityPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      uptimeHours: null == uptimeHours
          ? _value.uptimeHours
          : uptimeHours // ignore: cast_nullable_to_non_nullable
              as double,
      downtimeHours: null == downtimeHours
          ? _value.downtimeHours
          : downtimeHours // ignore: cast_nullable_to_non_nullable
              as double,
      totalShifts: null == totalShifts
          ? _value.totalShifts
          : totalShifts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityResultImpl implements _AvailabilityResult {
  const _$AvailabilityResultImpl(
      {required this.machineId,
      required this.availabilityPercentage,
      required this.uptimeHours,
      required this.downtimeHours,
      required this.totalShifts});

  factory _$AvailabilityResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityResultImplFromJson(json);

  @override
  final String machineId;
  @override
  final double availabilityPercentage;
  @override
  final double uptimeHours;
  @override
  final double downtimeHours;
  @override
  final int totalShifts;

  @override
  String toString() {
    return 'AvailabilityResult(machineId: $machineId, availabilityPercentage: $availabilityPercentage, uptimeHours: $uptimeHours, downtimeHours: $downtimeHours, totalShifts: $totalShifts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityResultImpl &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.availabilityPercentage, availabilityPercentage) ||
                other.availabilityPercentage == availabilityPercentage) &&
            (identical(other.uptimeHours, uptimeHours) ||
                other.uptimeHours == uptimeHours) &&
            (identical(other.downtimeHours, downtimeHours) ||
                other.downtimeHours == downtimeHours) &&
            (identical(other.totalShifts, totalShifts) ||
                other.totalShifts == totalShifts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, machineId,
      availabilityPercentage, uptimeHours, downtimeHours, totalShifts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityResultImplCopyWith<_$AvailabilityResultImpl> get copyWith =>
      __$$AvailabilityResultImplCopyWithImpl<_$AvailabilityResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityResultImplToJson(
      this,
    );
  }
}

abstract class _AvailabilityResult implements AvailabilityResult {
  const factory _AvailabilityResult(
      {required final String machineId,
      required final double availabilityPercentage,
      required final double uptimeHours,
      required final double downtimeHours,
      required final int totalShifts}) = _$AvailabilityResultImpl;

  factory _AvailabilityResult.fromJson(Map<String, dynamic> json) =
      _$AvailabilityResultImpl.fromJson;

  @override
  String get machineId;
  @override
  double get availabilityPercentage;
  @override
  double get uptimeHours;
  @override
  double get downtimeHours;
  @override
  int get totalShifts;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityResultImplCopyWith<_$AvailabilityResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailabilityTimeseriesResponse _$AvailabilityTimeseriesResponseFromJson(
    Map<String, dynamic> json) {
  return _AvailabilityTimeseriesResponse.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityTimeseriesResponse {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  String get interval => throw _privateConstructorUsedError;
  List<AvailabilityTimeseries> get series => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityTimeseriesResponseCopyWith<AvailabilityTimeseriesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityTimeseriesResponseCopyWith<$Res> {
  factory $AvailabilityTimeseriesResponseCopyWith(
          AvailabilityTimeseriesResponse value,
          $Res Function(AvailabilityTimeseriesResponse) then) =
      _$AvailabilityTimeseriesResponseCopyWithImpl<$Res,
          AvailabilityTimeseriesResponse>;
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      String interval,
      List<AvailabilityTimeseries> series});
}

/// @nodoc
class _$AvailabilityTimeseriesResponseCopyWithImpl<$Res,
        $Val extends AvailabilityTimeseriesResponse>
    implements $AvailabilityTimeseriesResponseCopyWith<$Res> {
  _$AvailabilityTimeseriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? interval = null,
    Object? series = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as List<AvailabilityTimeseries>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityTimeseriesResponseImplCopyWith<$Res>
    implements $AvailabilityTimeseriesResponseCopyWith<$Res> {
  factory _$$AvailabilityTimeseriesResponseImplCopyWith(
          _$AvailabilityTimeseriesResponseImpl value,
          $Res Function(_$AvailabilityTimeseriesResponseImpl) then) =
      __$$AvailabilityTimeseriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      String interval,
      List<AvailabilityTimeseries> series});
}

/// @nodoc
class __$$AvailabilityTimeseriesResponseImplCopyWithImpl<$Res>
    extends _$AvailabilityTimeseriesResponseCopyWithImpl<$Res,
        _$AvailabilityTimeseriesResponseImpl>
    implements _$$AvailabilityTimeseriesResponseImplCopyWith<$Res> {
  __$$AvailabilityTimeseriesResponseImplCopyWithImpl(
      _$AvailabilityTimeseriesResponseImpl _value,
      $Res Function(_$AvailabilityTimeseriesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? interval = null,
    Object? series = null,
  }) {
    return _then(_$AvailabilityTimeseriesResponseImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      series: null == series
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as List<AvailabilityTimeseries>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityTimeseriesResponseImpl
    implements _AvailabilityTimeseriesResponse {
  const _$AvailabilityTimeseriesResponseImpl(
      {required this.startTime,
      required this.endTime,
      required this.interval,
      required final List<AvailabilityTimeseries> series})
      : _series = series;

  factory _$AvailabilityTimeseriesResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AvailabilityTimeseriesResponseImplFromJson(json);

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final String interval;
  final List<AvailabilityTimeseries> _series;
  @override
  List<AvailabilityTimeseries> get series {
    if (_series is EqualUnmodifiableListView) return _series;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_series);
  }

  @override
  String toString() {
    return 'AvailabilityTimeseriesResponse(startTime: $startTime, endTime: $endTime, interval: $interval, series: $series)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityTimeseriesResponseImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            const DeepCollectionEquality().equals(other._series, _series));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, interval,
      const DeepCollectionEquality().hash(_series));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityTimeseriesResponseImplCopyWith<
          _$AvailabilityTimeseriesResponseImpl>
      get copyWith => __$$AvailabilityTimeseriesResponseImplCopyWithImpl<
          _$AvailabilityTimeseriesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityTimeseriesResponseImplToJson(
      this,
    );
  }
}

abstract class _AvailabilityTimeseriesResponse
    implements AvailabilityTimeseriesResponse {
  const factory _AvailabilityTimeseriesResponse(
          {required final DateTime startTime,
          required final DateTime endTime,
          required final String interval,
          required final List<AvailabilityTimeseries> series}) =
      _$AvailabilityTimeseriesResponseImpl;

  factory _AvailabilityTimeseriesResponse.fromJson(Map<String, dynamic> json) =
      _$AvailabilityTimeseriesResponseImpl.fromJson;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  String get interval;
  @override
  List<AvailabilityTimeseries> get series;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityTimeseriesResponseImplCopyWith<
          _$AvailabilityTimeseriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AvailabilityTimeseries _$AvailabilityTimeseriesFromJson(
    Map<String, dynamic> json) {
  return _AvailabilityTimeseries.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityTimeseries {
  String get machineId => throw _privateConstructorUsedError;
  List<AvailabilityDataPoint> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityTimeseriesCopyWith<AvailabilityTimeseries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityTimeseriesCopyWith<$Res> {
  factory $AvailabilityTimeseriesCopyWith(AvailabilityTimeseries value,
          $Res Function(AvailabilityTimeseries) then) =
      _$AvailabilityTimeseriesCopyWithImpl<$Res, AvailabilityTimeseries>;
  @useResult
  $Res call({String machineId, List<AvailabilityDataPoint> data});
}

/// @nodoc
class _$AvailabilityTimeseriesCopyWithImpl<$Res,
        $Val extends AvailabilityTimeseries>
    implements $AvailabilityTimeseriesCopyWith<$Res> {
  _$AvailabilityTimeseriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AvailabilityDataPoint>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityTimeseriesImplCopyWith<$Res>
    implements $AvailabilityTimeseriesCopyWith<$Res> {
  factory _$$AvailabilityTimeseriesImplCopyWith(
          _$AvailabilityTimeseriesImpl value,
          $Res Function(_$AvailabilityTimeseriesImpl) then) =
      __$$AvailabilityTimeseriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String machineId, List<AvailabilityDataPoint> data});
}

/// @nodoc
class __$$AvailabilityTimeseriesImplCopyWithImpl<$Res>
    extends _$AvailabilityTimeseriesCopyWithImpl<$Res,
        _$AvailabilityTimeseriesImpl>
    implements _$$AvailabilityTimeseriesImplCopyWith<$Res> {
  __$$AvailabilityTimeseriesImplCopyWithImpl(
      _$AvailabilityTimeseriesImpl _value,
      $Res Function(_$AvailabilityTimeseriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? data = null,
  }) {
    return _then(_$AvailabilityTimeseriesImpl(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AvailabilityDataPoint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityTimeseriesImpl implements _AvailabilityTimeseries {
  const _$AvailabilityTimeseriesImpl(
      {required this.machineId,
      required final List<AvailabilityDataPoint> data})
      : _data = data;

  factory _$AvailabilityTimeseriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityTimeseriesImplFromJson(json);

  @override
  final String machineId;
  final List<AvailabilityDataPoint> _data;
  @override
  List<AvailabilityDataPoint> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AvailabilityTimeseries(machineId: $machineId, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityTimeseriesImpl &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, machineId, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityTimeseriesImplCopyWith<_$AvailabilityTimeseriesImpl>
      get copyWith => __$$AvailabilityTimeseriesImplCopyWithImpl<
          _$AvailabilityTimeseriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityTimeseriesImplToJson(
      this,
    );
  }
}

abstract class _AvailabilityTimeseries implements AvailabilityTimeseries {
  const factory _AvailabilityTimeseries(
          {required final String machineId,
          required final List<AvailabilityDataPoint> data}) =
      _$AvailabilityTimeseriesImpl;

  factory _AvailabilityTimeseries.fromJson(Map<String, dynamic> json) =
      _$AvailabilityTimeseriesImpl.fromJson;

  @override
  String get machineId;
  @override
  List<AvailabilityDataPoint> get data;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityTimeseriesImplCopyWith<_$AvailabilityTimeseriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AvailabilityDataPoint _$AvailabilityDataPointFromJson(
    Map<String, dynamic> json) {
  return _AvailabilityDataPoint.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityDataPoint {
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get availabilityRatio => throw _privateConstructorUsedError;
  int get totalMinutes => throw _privateConstructorUsedError;
  int get actualProductionMinutes => throw _privateConstructorUsedError;
  int get plannedProductionMinutes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityDataPointCopyWith<AvailabilityDataPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityDataPointCopyWith<$Res> {
  factory $AvailabilityDataPointCopyWith(AvailabilityDataPoint value,
          $Res Function(AvailabilityDataPoint) then) =
      _$AvailabilityDataPointCopyWithImpl<$Res, AvailabilityDataPoint>;
  @useResult
  $Res call(
      {DateTime timestamp,
      double availabilityRatio,
      int totalMinutes,
      int actualProductionMinutes,
      int plannedProductionMinutes});
}

/// @nodoc
class _$AvailabilityDataPointCopyWithImpl<$Res,
        $Val extends AvailabilityDataPoint>
    implements $AvailabilityDataPointCopyWith<$Res> {
  _$AvailabilityDataPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? availabilityRatio = null,
    Object? totalMinutes = null,
    Object? actualProductionMinutes = null,
    Object? plannedProductionMinutes = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      availabilityRatio: null == availabilityRatio
          ? _value.availabilityRatio
          : availabilityRatio // ignore: cast_nullable_to_non_nullable
              as double,
      totalMinutes: null == totalMinutes
          ? _value.totalMinutes
          : totalMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      actualProductionMinutes: null == actualProductionMinutes
          ? _value.actualProductionMinutes
          : actualProductionMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      plannedProductionMinutes: null == plannedProductionMinutes
          ? _value.plannedProductionMinutes
          : plannedProductionMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityDataPointImplCopyWith<$Res>
    implements $AvailabilityDataPointCopyWith<$Res> {
  factory _$$AvailabilityDataPointImplCopyWith(
          _$AvailabilityDataPointImpl value,
          $Res Function(_$AvailabilityDataPointImpl) then) =
      __$$AvailabilityDataPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime timestamp,
      double availabilityRatio,
      int totalMinutes,
      int actualProductionMinutes,
      int plannedProductionMinutes});
}

/// @nodoc
class __$$AvailabilityDataPointImplCopyWithImpl<$Res>
    extends _$AvailabilityDataPointCopyWithImpl<$Res,
        _$AvailabilityDataPointImpl>
    implements _$$AvailabilityDataPointImplCopyWith<$Res> {
  __$$AvailabilityDataPointImplCopyWithImpl(_$AvailabilityDataPointImpl _value,
      $Res Function(_$AvailabilityDataPointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? availabilityRatio = null,
    Object? totalMinutes = null,
    Object? actualProductionMinutes = null,
    Object? plannedProductionMinutes = null,
  }) {
    return _then(_$AvailabilityDataPointImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      availabilityRatio: null == availabilityRatio
          ? _value.availabilityRatio
          : availabilityRatio // ignore: cast_nullable_to_non_nullable
              as double,
      totalMinutes: null == totalMinutes
          ? _value.totalMinutes
          : totalMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      actualProductionMinutes: null == actualProductionMinutes
          ? _value.actualProductionMinutes
          : actualProductionMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      plannedProductionMinutes: null == plannedProductionMinutes
          ? _value.plannedProductionMinutes
          : plannedProductionMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityDataPointImpl extends _AvailabilityDataPoint {
  const _$AvailabilityDataPointImpl(
      {required this.timestamp,
      required this.availabilityRatio,
      required this.totalMinutes,
      required this.actualProductionMinutes,
      required this.plannedProductionMinutes})
      : super._();

  factory _$AvailabilityDataPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityDataPointImplFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final double availabilityRatio;
  @override
  final int totalMinutes;
  @override
  final int actualProductionMinutes;
  @override
  final int plannedProductionMinutes;

  @override
  String toString() {
    return 'AvailabilityDataPoint(timestamp: $timestamp, availabilityRatio: $availabilityRatio, totalMinutes: $totalMinutes, actualProductionMinutes: $actualProductionMinutes, plannedProductionMinutes: $plannedProductionMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityDataPointImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.availabilityRatio, availabilityRatio) ||
                other.availabilityRatio == availabilityRatio) &&
            (identical(other.totalMinutes, totalMinutes) ||
                other.totalMinutes == totalMinutes) &&
            (identical(
                    other.actualProductionMinutes, actualProductionMinutes) ||
                other.actualProductionMinutes == actualProductionMinutes) &&
            (identical(
                    other.plannedProductionMinutes, plannedProductionMinutes) ||
                other.plannedProductionMinutes == plannedProductionMinutes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timestamp, availabilityRatio,
      totalMinutes, actualProductionMinutes, plannedProductionMinutes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityDataPointImplCopyWith<_$AvailabilityDataPointImpl>
      get copyWith => __$$AvailabilityDataPointImplCopyWithImpl<
          _$AvailabilityDataPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityDataPointImplToJson(
      this,
    );
  }
}

abstract class _AvailabilityDataPoint extends AvailabilityDataPoint {
  const factory _AvailabilityDataPoint(
          {required final DateTime timestamp,
          required final double availabilityRatio,
          required final int totalMinutes,
          required final int actualProductionMinutes,
          required final int plannedProductionMinutes}) =
      _$AvailabilityDataPointImpl;
  const _AvailabilityDataPoint._() : super._();

  factory _AvailabilityDataPoint.fromJson(Map<String, dynamic> json) =
      _$AvailabilityDataPointImpl.fromJson;

  @override
  DateTime get timestamp;
  @override
  double get availabilityRatio;
  @override
  int get totalMinutes;
  @override
  int get actualProductionMinutes;
  @override
  int get plannedProductionMinutes;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityDataPointImplCopyWith<_$AvailabilityDataPointImpl>
      get copyWith => throw _privateConstructorUsedError;
}
