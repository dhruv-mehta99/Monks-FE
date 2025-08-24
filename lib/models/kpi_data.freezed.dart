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
  int get totalOutputQty => throw _privateConstructorUsedError;
  int get rejectedOutputQty => throw _privateConstructorUsedError;
  int get goodOutputQty => throw _privateConstructorUsedError;
  double get yieldRatio => throw _privateConstructorUsedError;

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
      int totalOutputQty,
      int rejectedOutputQty,
      int goodOutputQty,
      double yieldRatio});
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
    Object? totalOutputQty = null,
    Object? rejectedOutputQty = null,
    Object? goodOutputQty = null,
    Object? yieldRatio = null,
  }) {
    return _then(_value.copyWith(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      totalOutputQty: null == totalOutputQty
          ? _value.totalOutputQty
          : totalOutputQty // ignore: cast_nullable_to_non_nullable
              as int,
      rejectedOutputQty: null == rejectedOutputQty
          ? _value.rejectedOutputQty
          : rejectedOutputQty // ignore: cast_nullable_to_non_nullable
              as int,
      goodOutputQty: null == goodOutputQty
          ? _value.goodOutputQty
          : goodOutputQty // ignore: cast_nullable_to_non_nullable
              as int,
      yieldRatio: null == yieldRatio
          ? _value.yieldRatio
          : yieldRatio // ignore: cast_nullable_to_non_nullable
              as double,
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
      int totalOutputQty,
      int rejectedOutputQty,
      int goodOutputQty,
      double yieldRatio});
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
    Object? totalOutputQty = null,
    Object? rejectedOutputQty = null,
    Object? goodOutputQty = null,
    Object? yieldRatio = null,
  }) {
    return _then(_$OutputResultImpl(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      totalOutputQty: null == totalOutputQty
          ? _value.totalOutputQty
          : totalOutputQty // ignore: cast_nullable_to_non_nullable
              as int,
      rejectedOutputQty: null == rejectedOutputQty
          ? _value.rejectedOutputQty
          : rejectedOutputQty // ignore: cast_nullable_to_non_nullable
              as int,
      goodOutputQty: null == goodOutputQty
          ? _value.goodOutputQty
          : goodOutputQty // ignore: cast_nullable_to_non_nullable
              as int,
      yieldRatio: null == yieldRatio
          ? _value.yieldRatio
          : yieldRatio // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutputResultImpl implements _OutputResult {
  const _$OutputResultImpl(
      {required this.machineId,
      required this.totalOutputQty,
      required this.rejectedOutputQty,
      required this.goodOutputQty,
      required this.yieldRatio});

  factory _$OutputResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutputResultImplFromJson(json);

  @override
  final String machineId;
  @override
  final int totalOutputQty;
  @override
  final int rejectedOutputQty;
  @override
  final int goodOutputQty;
  @override
  final double yieldRatio;

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
      required final int totalOutputQty,
      required final int rejectedOutputQty,
      required final int goodOutputQty,
      required final double yieldRatio}) = _$OutputResultImpl;

  factory _OutputResult.fromJson(Map<String, dynamic> json) =
      _$OutputResultImpl.fromJson;

  @override
  String get machineId;
  @override
  int get totalOutputQty;
  @override
  int get rejectedOutputQty;
  @override
  int get goodOutputQty;
  @override
  double get yieldRatio;
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
  double get value => throw _privateConstructorUsedError;

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
  $Res call({DateTime timestamp, double value});
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
abstract class _$$OutputDataPointImplCopyWith<$Res>
    implements $OutputDataPointCopyWith<$Res> {
  factory _$$OutputDataPointImplCopyWith(_$OutputDataPointImpl value,
          $Res Function(_$OutputDataPointImpl) then) =
      __$$OutputDataPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime timestamp, double value});
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
    Object? value = null,
  }) {
    return _then(_$OutputDataPointImpl(
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
class _$OutputDataPointImpl implements _OutputDataPoint {
  const _$OutputDataPointImpl({required this.timestamp, required this.value});

  factory _$OutputDataPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutputDataPointImplFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final double value;

  @override
  String toString() {
    return 'OutputDataPoint(timestamp: $timestamp, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutputDataPointImpl &&
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

abstract class _OutputDataPoint implements OutputDataPoint {
  const factory _OutputDataPoint(
      {required final DateTime timestamp,
      required final double value}) = _$OutputDataPointImpl;

  factory _OutputDataPoint.fromJson(Map<String, dynamic> json) =
      _$OutputDataPointImpl.fromJson;

  @override
  DateTime get timestamp;
  @override
  double get value;
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
