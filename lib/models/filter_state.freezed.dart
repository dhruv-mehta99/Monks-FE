// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterState _$FilterStateFromJson(Map<String, dynamic> json) {
  return _FilterState.fromJson(json);
}

/// @nodoc
mixin _$FilterState {
  String? get plantId => throw _privateConstructorUsedError;
  String? get unitId => throw _privateConstructorUsedError;
  String? get segmentId => throw _privateConstructorUsedError;
  String? get lineId => throw _privateConstructorUsedError;
  String? get machineId => throw _privateConstructorUsedError;
  @DateTimeRangeConverter()
  DateTimeRange<DateTime> get dateRange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
  @useResult
  $Res call(
      {String? plantId,
      String? unitId,
      String? segmentId,
      String? lineId,
      String? machineId,
      @DateTimeRangeConverter() DateTimeRange<DateTime> dateRange});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plantId = freezed,
    Object? unitId = freezed,
    Object? segmentId = freezed,
    Object? lineId = freezed,
    Object? machineId = freezed,
    Object? dateRange = null,
  }) {
    return _then(_value.copyWith(
      plantId: freezed == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitId: freezed == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String?,
      segmentId: freezed == segmentId
          ? _value.segmentId
          : segmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      lineId: freezed == lineId
          ? _value.lineId
          : lineId // ignore: cast_nullable_to_non_nullable
              as String?,
      machineId: freezed == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateRange: null == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange<DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterStateImplCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$FilterStateImplCopyWith(
          _$FilterStateImpl value, $Res Function(_$FilterStateImpl) then) =
      __$$FilterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? plantId,
      String? unitId,
      String? segmentId,
      String? lineId,
      String? machineId,
      @DateTimeRangeConverter() DateTimeRange<DateTime> dateRange});
}

/// @nodoc
class __$$FilterStateImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$FilterStateImpl>
    implements _$$FilterStateImplCopyWith<$Res> {
  __$$FilterStateImplCopyWithImpl(
      _$FilterStateImpl _value, $Res Function(_$FilterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plantId = freezed,
    Object? unitId = freezed,
    Object? segmentId = freezed,
    Object? lineId = freezed,
    Object? machineId = freezed,
    Object? dateRange = null,
  }) {
    return _then(_$FilterStateImpl(
      plantId: freezed == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String?,
      unitId: freezed == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String?,
      segmentId: freezed == segmentId
          ? _value.segmentId
          : segmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      lineId: freezed == lineId
          ? _value.lineId
          : lineId // ignore: cast_nullable_to_non_nullable
              as String?,
      machineId: freezed == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateRange: null == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange<DateTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterStateImpl implements _FilterState {
  const _$FilterStateImpl(
      {this.plantId,
      this.unitId,
      this.segmentId,
      this.lineId,
      this.machineId,
      @DateTimeRangeConverter() required this.dateRange});

  factory _$FilterStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterStateImplFromJson(json);

  @override
  final String? plantId;
  @override
  final String? unitId;
  @override
  final String? segmentId;
  @override
  final String? lineId;
  @override
  final String? machineId;
  @override
  @DateTimeRangeConverter()
  final DateTimeRange<DateTime> dateRange;

  @override
  String toString() {
    return 'FilterState(plantId: $plantId, unitId: $unitId, segmentId: $segmentId, lineId: $lineId, machineId: $machineId, dateRange: $dateRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterStateImpl &&
            (identical(other.plantId, plantId) || other.plantId == plantId) &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.segmentId, segmentId) ||
                other.segmentId == segmentId) &&
            (identical(other.lineId, lineId) || other.lineId == lineId) &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, plantId, unitId, segmentId, lineId, machineId, dateRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      __$$FilterStateImplCopyWithImpl<_$FilterStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterStateImplToJson(
      this,
    );
  }
}

abstract class _FilterState implements FilterState {
  const factory _FilterState(
      {final String? plantId,
      final String? unitId,
      final String? segmentId,
      final String? lineId,
      final String? machineId,
      @DateTimeRangeConverter()
      required final DateTimeRange<DateTime> dateRange}) = _$FilterStateImpl;

  factory _FilterState.fromJson(Map<String, dynamic> json) =
      _$FilterStateImpl.fromJson;

  @override
  String? get plantId;
  @override
  String? get unitId;
  @override
  String? get segmentId;
  @override
  String? get lineId;
  @override
  String? get machineId;
  @override
  @DateTimeRangeConverter()
  DateTimeRange<DateTime> get dateRange;
  @override
  @JsonKey(ignore: true)
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ComparisonFilters _$ComparisonFiltersFromJson(Map<String, dynamic> json) {
  return _ComparisonFilters.fromJson(json);
}

/// @nodoc
mixin _$ComparisonFilters {
  List<String> get machineIds => throw _privateConstructorUsedError;
  @DateTimeRangeConverter()
  DateTimeRange<DateTime> get dateRange => throw _privateConstructorUsedError;
  String? get shiftId => throw _privateConstructorUsedError;
  String? get operatorId => throw _privateConstructorUsedError;
  String? get productId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComparisonFiltersCopyWith<ComparisonFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComparisonFiltersCopyWith<$Res> {
  factory $ComparisonFiltersCopyWith(
          ComparisonFilters value, $Res Function(ComparisonFilters) then) =
      _$ComparisonFiltersCopyWithImpl<$Res, ComparisonFilters>;
  @useResult
  $Res call(
      {List<String> machineIds,
      @DateTimeRangeConverter() DateTimeRange<DateTime> dateRange,
      String? shiftId,
      String? operatorId,
      String? productId});
}

/// @nodoc
class _$ComparisonFiltersCopyWithImpl<$Res, $Val extends ComparisonFilters>
    implements $ComparisonFiltersCopyWith<$Res> {
  _$ComparisonFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineIds = null,
    Object? dateRange = null,
    Object? shiftId = freezed,
    Object? operatorId = freezed,
    Object? productId = freezed,
  }) {
    return _then(_value.copyWith(
      machineIds: null == machineIds
          ? _value.machineIds
          : machineIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateRange: null == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange<DateTime>,
      shiftId: freezed == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as String?,
      operatorId: freezed == operatorId
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComparisonFiltersImplCopyWith<$Res>
    implements $ComparisonFiltersCopyWith<$Res> {
  factory _$$ComparisonFiltersImplCopyWith(_$ComparisonFiltersImpl value,
          $Res Function(_$ComparisonFiltersImpl) then) =
      __$$ComparisonFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> machineIds,
      @DateTimeRangeConverter() DateTimeRange<DateTime> dateRange,
      String? shiftId,
      String? operatorId,
      String? productId});
}

/// @nodoc
class __$$ComparisonFiltersImplCopyWithImpl<$Res>
    extends _$ComparisonFiltersCopyWithImpl<$Res, _$ComparisonFiltersImpl>
    implements _$$ComparisonFiltersImplCopyWith<$Res> {
  __$$ComparisonFiltersImplCopyWithImpl(_$ComparisonFiltersImpl _value,
      $Res Function(_$ComparisonFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineIds = null,
    Object? dateRange = null,
    Object? shiftId = freezed,
    Object? operatorId = freezed,
    Object? productId = freezed,
  }) {
    return _then(_$ComparisonFiltersImpl(
      machineIds: null == machineIds
          ? _value._machineIds
          : machineIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateRange: null == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange<DateTime>,
      shiftId: freezed == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as String?,
      operatorId: freezed == operatorId
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComparisonFiltersImpl implements _ComparisonFilters {
  const _$ComparisonFiltersImpl(
      {required final List<String> machineIds,
      @DateTimeRangeConverter() required this.dateRange,
      this.shiftId,
      this.operatorId,
      this.productId})
      : _machineIds = machineIds;

  factory _$ComparisonFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComparisonFiltersImplFromJson(json);

  final List<String> _machineIds;
  @override
  List<String> get machineIds {
    if (_machineIds is EqualUnmodifiableListView) return _machineIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_machineIds);
  }

  @override
  @DateTimeRangeConverter()
  final DateTimeRange<DateTime> dateRange;
  @override
  final String? shiftId;
  @override
  final String? operatorId;
  @override
  final String? productId;

  @override
  String toString() {
    return 'ComparisonFilters(machineIds: $machineIds, dateRange: $dateRange, shiftId: $shiftId, operatorId: $operatorId, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComparisonFiltersImpl &&
            const DeepCollectionEquality()
                .equals(other._machineIds, _machineIds) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange) &&
            (identical(other.shiftId, shiftId) || other.shiftId == shiftId) &&
            (identical(other.operatorId, operatorId) ||
                other.operatorId == operatorId) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_machineIds),
      dateRange,
      shiftId,
      operatorId,
      productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComparisonFiltersImplCopyWith<_$ComparisonFiltersImpl> get copyWith =>
      __$$ComparisonFiltersImplCopyWithImpl<_$ComparisonFiltersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComparisonFiltersImplToJson(
      this,
    );
  }
}

abstract class _ComparisonFilters implements ComparisonFilters {
  const factory _ComparisonFilters(
      {required final List<String> machineIds,
      @DateTimeRangeConverter()
      required final DateTimeRange<DateTime> dateRange,
      final String? shiftId,
      final String? operatorId,
      final String? productId}) = _$ComparisonFiltersImpl;

  factory _ComparisonFilters.fromJson(Map<String, dynamic> json) =
      _$ComparisonFiltersImpl.fromJson;

  @override
  List<String> get machineIds;
  @override
  @DateTimeRangeConverter()
  DateTimeRange<DateTime> get dateRange;
  @override
  String? get shiftId;
  @override
  String? get operatorId;
  @override
  String? get productId;
  @override
  @JsonKey(ignore: true)
  _$$ComparisonFiltersImplCopyWith<_$ComparisonFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KpiComparison _$KpiComparisonFromJson(Map<String, dynamic> json) {
  return _KpiComparison.fromJson(json);
}

/// @nodoc
mixin _$KpiComparison {
  String get machineId => throw _privateConstructorUsedError;
  String get machineName => throw _privateConstructorUsedError;
  Map<String, double> get kpiValues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KpiComparisonCopyWith<KpiComparison> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KpiComparisonCopyWith<$Res> {
  factory $KpiComparisonCopyWith(
          KpiComparison value, $Res Function(KpiComparison) then) =
      _$KpiComparisonCopyWithImpl<$Res, KpiComparison>;
  @useResult
  $Res call(
      {String machineId, String machineName, Map<String, double> kpiValues});
}

/// @nodoc
class _$KpiComparisonCopyWithImpl<$Res, $Val extends KpiComparison>
    implements $KpiComparisonCopyWith<$Res> {
  _$KpiComparisonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? machineName = null,
    Object? kpiValues = null,
  }) {
    return _then(_value.copyWith(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      machineName: null == machineName
          ? _value.machineName
          : machineName // ignore: cast_nullable_to_non_nullable
              as String,
      kpiValues: null == kpiValues
          ? _value.kpiValues
          : kpiValues // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KpiComparisonImplCopyWith<$Res>
    implements $KpiComparisonCopyWith<$Res> {
  factory _$$KpiComparisonImplCopyWith(
          _$KpiComparisonImpl value, $Res Function(_$KpiComparisonImpl) then) =
      __$$KpiComparisonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String machineId, String machineName, Map<String, double> kpiValues});
}

/// @nodoc
class __$$KpiComparisonImplCopyWithImpl<$Res>
    extends _$KpiComparisonCopyWithImpl<$Res, _$KpiComparisonImpl>
    implements _$$KpiComparisonImplCopyWith<$Res> {
  __$$KpiComparisonImplCopyWithImpl(
      _$KpiComparisonImpl _value, $Res Function(_$KpiComparisonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? machineId = null,
    Object? machineName = null,
    Object? kpiValues = null,
  }) {
    return _then(_$KpiComparisonImpl(
      machineId: null == machineId
          ? _value.machineId
          : machineId // ignore: cast_nullable_to_non_nullable
              as String,
      machineName: null == machineName
          ? _value.machineName
          : machineName // ignore: cast_nullable_to_non_nullable
              as String,
      kpiValues: null == kpiValues
          ? _value._kpiValues
          : kpiValues // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KpiComparisonImpl implements _KpiComparison {
  const _$KpiComparisonImpl(
      {required this.machineId,
      required this.machineName,
      required final Map<String, double> kpiValues})
      : _kpiValues = kpiValues;

  factory _$KpiComparisonImpl.fromJson(Map<String, dynamic> json) =>
      _$$KpiComparisonImplFromJson(json);

  @override
  final String machineId;
  @override
  final String machineName;
  final Map<String, double> _kpiValues;
  @override
  Map<String, double> get kpiValues {
    if (_kpiValues is EqualUnmodifiableMapView) return _kpiValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_kpiValues);
  }

  @override
  String toString() {
    return 'KpiComparison(machineId: $machineId, machineName: $machineName, kpiValues: $kpiValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KpiComparisonImpl &&
            (identical(other.machineId, machineId) ||
                other.machineId == machineId) &&
            (identical(other.machineName, machineName) ||
                other.machineName == machineName) &&
            const DeepCollectionEquality()
                .equals(other._kpiValues, _kpiValues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, machineId, machineName,
      const DeepCollectionEquality().hash(_kpiValues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KpiComparisonImplCopyWith<_$KpiComparisonImpl> get copyWith =>
      __$$KpiComparisonImplCopyWithImpl<_$KpiComparisonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KpiComparisonImplToJson(
      this,
    );
  }
}

abstract class _KpiComparison implements KpiComparison {
  const factory _KpiComparison(
      {required final String machineId,
      required final String machineName,
      required final Map<String, double> kpiValues}) = _$KpiComparisonImpl;

  factory _KpiComparison.fromJson(Map<String, dynamic> json) =
      _$KpiComparisonImpl.fromJson;

  @override
  String get machineId;
  @override
  String get machineName;
  @override
  Map<String, double> get kpiValues;
  @override
  @JsonKey(ignore: true)
  _$$KpiComparisonImplCopyWith<_$KpiComparisonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
