// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Series _$SeriesFromJson(Map<String, dynamic> json) {
  return _Series.fromJson(json);
}

/// @nodoc
mixin _$Series {
  String get name => throw _privateConstructorUsedError;
  List<DataPoint> get data => throw _privateConstructorUsedError;
  @NullableColorConverter()
  Color? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeriesCopyWith<Series> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesCopyWith<$Res> {
  factory $SeriesCopyWith(Series value, $Res Function(Series) then) =
      _$SeriesCopyWithImpl<$Res, Series>;
  @useResult
  $Res call(
      {String name,
      List<DataPoint> data,
      @NullableColorConverter() Color? color});
}

/// @nodoc
class _$SeriesCopyWithImpl<$Res, $Val extends Series>
    implements $SeriesCopyWith<$Res> {
  _$SeriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataPoint>,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeriesImplCopyWith<$Res> implements $SeriesCopyWith<$Res> {
  factory _$$SeriesImplCopyWith(
          _$SeriesImpl value, $Res Function(_$SeriesImpl) then) =
      __$$SeriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<DataPoint> data,
      @NullableColorConverter() Color? color});
}

/// @nodoc
class __$$SeriesImplCopyWithImpl<$Res>
    extends _$SeriesCopyWithImpl<$Res, _$SeriesImpl>
    implements _$$SeriesImplCopyWith<$Res> {
  __$$SeriesImplCopyWithImpl(
      _$SeriesImpl _value, $Res Function(_$SeriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
    Object? color = freezed,
  }) {
    return _then(_$SeriesImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataPoint>,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeriesImpl implements _Series {
  const _$SeriesImpl(
      {required this.name,
      required final List<DataPoint> data,
      @NullableColorConverter() this.color})
      : _data = data;

  factory _$SeriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeriesImplFromJson(json);

  @override
  final String name;
  final List<DataPoint> _data;
  @override
  List<DataPoint> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @NullableColorConverter()
  final Color? color;

  @override
  String toString() {
    return 'Series(name: $name, data: $data, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_data), color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesImplCopyWith<_$SeriesImpl> get copyWith =>
      __$$SeriesImplCopyWithImpl<_$SeriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeriesImplToJson(
      this,
    );
  }
}

abstract class _Series implements Series {
  const factory _Series(
      {required final String name,
      required final List<DataPoint> data,
      @NullableColorConverter() final Color? color}) = _$SeriesImpl;

  factory _Series.fromJson(Map<String, dynamic> json) = _$SeriesImpl.fromJson;

  @override
  String get name;
  @override
  List<DataPoint> get data;
  @override
  @NullableColorConverter()
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$SeriesImplCopyWith<_$SeriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataPoint _$DataPointFromJson(Map<String, dynamic> json) {
  return _DataPoint.fromJson(json);
}

/// @nodoc
mixin _$DataPoint {
  dynamic get x => throw _privateConstructorUsedError;
  num get y => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPointCopyWith<DataPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPointCopyWith<$Res> {
  factory $DataPointCopyWith(DataPoint value, $Res Function(DataPoint) then) =
      _$DataPointCopyWithImpl<$Res, DataPoint>;
  @useResult
  $Res call({dynamic x, num y, String? label});
}

/// @nodoc
class _$DataPointCopyWithImpl<$Res, $Val extends DataPoint>
    implements $DataPointCopyWith<$Res> {
  _$DataPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = null,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as dynamic,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as num,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataPointImplCopyWith<$Res>
    implements $DataPointCopyWith<$Res> {
  factory _$$DataPointImplCopyWith(
          _$DataPointImpl value, $Res Function(_$DataPointImpl) then) =
      __$$DataPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic x, num y, String? label});
}

/// @nodoc
class __$$DataPointImplCopyWithImpl<$Res>
    extends _$DataPointCopyWithImpl<$Res, _$DataPointImpl>
    implements _$$DataPointImplCopyWith<$Res> {
  __$$DataPointImplCopyWithImpl(
      _$DataPointImpl _value, $Res Function(_$DataPointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = null,
    Object? label = freezed,
  }) {
    return _then(_$DataPointImpl(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as dynamic,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as num,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataPointImpl implements _DataPoint {
  const _$DataPointImpl({required this.x, required this.y, this.label});

  factory _$DataPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataPointImplFromJson(json);

  @override
  final dynamic x;
  @override
  final num y;
  @override
  final String? label;

  @override
  String toString() {
    return 'DataPoint(x: $x, y: $y, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataPointImpl &&
            const DeepCollectionEquality().equals(other.x, x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(x), y, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataPointImplCopyWith<_$DataPointImpl> get copyWith =>
      __$$DataPointImplCopyWithImpl<_$DataPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataPointImplToJson(
      this,
    );
  }
}

abstract class _DataPoint implements DataPoint {
  const factory _DataPoint(
      {required final dynamic x,
      required final num y,
      final String? label}) = _$DataPointImpl;

  factory _DataPoint.fromJson(Map<String, dynamic> json) =
      _$DataPointImpl.fromJson;

  @override
  dynamic get x;
  @override
  num get y;
  @override
  String? get label;
  @override
  @JsonKey(ignore: true)
  _$$DataPointImplCopyWith<_$DataPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LegendItem _$LegendItemFromJson(Map<String, dynamic> json) {
  return _LegendItem.fromJson(json);
}

/// @nodoc
mixin _$LegendItem {
  String get text => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;
  bool? get isVisible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LegendItemCopyWith<LegendItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegendItemCopyWith<$Res> {
  factory $LegendItemCopyWith(
          LegendItem value, $Res Function(LegendItem) then) =
      _$LegendItemCopyWithImpl<$Res, LegendItem>;
  @useResult
  $Res call({String text, @ColorConverter() Color color, bool? isVisible});
}

/// @nodoc
class _$LegendItemCopyWithImpl<$Res, $Val extends LegendItem>
    implements $LegendItemCopyWith<$Res> {
  _$LegendItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? color = null,
    Object? isVisible = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LegendItemImplCopyWith<$Res>
    implements $LegendItemCopyWith<$Res> {
  factory _$$LegendItemImplCopyWith(
          _$LegendItemImpl value, $Res Function(_$LegendItemImpl) then) =
      __$$LegendItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, @ColorConverter() Color color, bool? isVisible});
}

/// @nodoc
class __$$LegendItemImplCopyWithImpl<$Res>
    extends _$LegendItemCopyWithImpl<$Res, _$LegendItemImpl>
    implements _$$LegendItemImplCopyWith<$Res> {
  __$$LegendItemImplCopyWithImpl(
      _$LegendItemImpl _value, $Res Function(_$LegendItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? color = null,
    Object? isVisible = freezed,
  }) {
    return _then(_$LegendItemImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LegendItemImpl implements _LegendItem {
  const _$LegendItemImpl(
      {required this.text,
      @ColorConverter() required this.color,
      this.isVisible});

  factory _$LegendItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LegendItemImplFromJson(json);

  @override
  final String text;
  @override
  @ColorConverter()
  final Color color;
  @override
  final bool? isVisible;

  @override
  String toString() {
    return 'LegendItem(text: $text, color: $color, isVisible: $isVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LegendItemImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, color, isVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LegendItemImplCopyWith<_$LegendItemImpl> get copyWith =>
      __$$LegendItemImplCopyWithImpl<_$LegendItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LegendItemImplToJson(
      this,
    );
  }
}

abstract class _LegendItem implements LegendItem {
  const factory _LegendItem(
      {required final String text,
      @ColorConverter() required final Color color,
      final bool? isVisible}) = _$LegendItemImpl;

  factory _LegendItem.fromJson(Map<String, dynamic> json) =
      _$LegendItemImpl.fromJson;

  @override
  String get text;
  @override
  @ColorConverter()
  Color get color;
  @override
  bool? get isVisible;
  @override
  @JsonKey(ignore: true)
  _$$LegendItemImplCopyWith<_$LegendItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AxisFormat _$AxisFormatFromJson(Map<String, dynamic> json) {
  return _AxisFormat.fromJson(json);
}

/// @nodoc
mixin _$AxisFormat {
  String? get title => throw _privateConstructorUsedError;
  bool get showGrid => throw _privateConstructorUsedError;
  bool get showLabels => throw _privateConstructorUsedError;
  bool get showTicks => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String Function(dynamic)? get labelFormatter =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AxisFormatCopyWith<AxisFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AxisFormatCopyWith<$Res> {
  factory $AxisFormatCopyWith(
          AxisFormat value, $Res Function(AxisFormat) then) =
      _$AxisFormatCopyWithImpl<$Res, AxisFormat>;
  @useResult
  $Res call(
      {String? title,
      bool showGrid,
      bool showLabels,
      bool showTicks,
      @JsonKey(ignore: true) String Function(dynamic)? labelFormatter});
}

/// @nodoc
class _$AxisFormatCopyWithImpl<$Res, $Val extends AxisFormat>
    implements $AxisFormatCopyWith<$Res> {
  _$AxisFormatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? showGrid = null,
    Object? showLabels = null,
    Object? showTicks = null,
    Object? labelFormatter = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      showGrid: null == showGrid
          ? _value.showGrid
          : showGrid // ignore: cast_nullable_to_non_nullable
              as bool,
      showLabels: null == showLabels
          ? _value.showLabels
          : showLabels // ignore: cast_nullable_to_non_nullable
              as bool,
      showTicks: null == showTicks
          ? _value.showTicks
          : showTicks // ignore: cast_nullable_to_non_nullable
              as bool,
      labelFormatter: freezed == labelFormatter
          ? _value.labelFormatter
          : labelFormatter // ignore: cast_nullable_to_non_nullable
              as String Function(dynamic)?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AxisFormatImplCopyWith<$Res>
    implements $AxisFormatCopyWith<$Res> {
  factory _$$AxisFormatImplCopyWith(
          _$AxisFormatImpl value, $Res Function(_$AxisFormatImpl) then) =
      __$$AxisFormatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      bool showGrid,
      bool showLabels,
      bool showTicks,
      @JsonKey(ignore: true) String Function(dynamic)? labelFormatter});
}

/// @nodoc
class __$$AxisFormatImplCopyWithImpl<$Res>
    extends _$AxisFormatCopyWithImpl<$Res, _$AxisFormatImpl>
    implements _$$AxisFormatImplCopyWith<$Res> {
  __$$AxisFormatImplCopyWithImpl(
      _$AxisFormatImpl _value, $Res Function(_$AxisFormatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? showGrid = null,
    Object? showLabels = null,
    Object? showTicks = null,
    Object? labelFormatter = freezed,
  }) {
    return _then(_$AxisFormatImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      showGrid: null == showGrid
          ? _value.showGrid
          : showGrid // ignore: cast_nullable_to_non_nullable
              as bool,
      showLabels: null == showLabels
          ? _value.showLabels
          : showLabels // ignore: cast_nullable_to_non_nullable
              as bool,
      showTicks: null == showTicks
          ? _value.showTicks
          : showTicks // ignore: cast_nullable_to_non_nullable
              as bool,
      labelFormatter: freezed == labelFormatter
          ? _value.labelFormatter
          : labelFormatter // ignore: cast_nullable_to_non_nullable
              as String Function(dynamic)?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AxisFormatImpl implements _AxisFormat {
  const _$AxisFormatImpl(
      {this.title,
      this.showGrid = true,
      this.showLabels = true,
      this.showTicks = true,
      @JsonKey(ignore: true) this.labelFormatter});

  factory _$AxisFormatImpl.fromJson(Map<String, dynamic> json) =>
      _$$AxisFormatImplFromJson(json);

  @override
  final String? title;
  @override
  @JsonKey()
  final bool showGrid;
  @override
  @JsonKey()
  final bool showLabels;
  @override
  @JsonKey()
  final bool showTicks;
  @override
  @JsonKey(ignore: true)
  final String Function(dynamic)? labelFormatter;

  @override
  String toString() {
    return 'AxisFormat(title: $title, showGrid: $showGrid, showLabels: $showLabels, showTicks: $showTicks, labelFormatter: $labelFormatter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AxisFormatImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.showGrid, showGrid) ||
                other.showGrid == showGrid) &&
            (identical(other.showLabels, showLabels) ||
                other.showLabels == showLabels) &&
            (identical(other.showTicks, showTicks) ||
                other.showTicks == showTicks) &&
            (identical(other.labelFormatter, labelFormatter) ||
                other.labelFormatter == labelFormatter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, showGrid, showLabels, showTicks, labelFormatter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AxisFormatImplCopyWith<_$AxisFormatImpl> get copyWith =>
      __$$AxisFormatImplCopyWithImpl<_$AxisFormatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AxisFormatImplToJson(
      this,
    );
  }
}

abstract class _AxisFormat implements AxisFormat {
  const factory _AxisFormat(
      {final String? title,
      final bool showGrid,
      final bool showLabels,
      final bool showTicks,
      @JsonKey(ignore: true)
      final String Function(dynamic)? labelFormatter}) = _$AxisFormatImpl;

  factory _AxisFormat.fromJson(Map<String, dynamic> json) =
      _$AxisFormatImpl.fromJson;

  @override
  String? get title;
  @override
  bool get showGrid;
  @override
  bool get showLabels;
  @override
  bool get showTicks;
  @override
  @JsonKey(ignore: true)
  String Function(dynamic)? get labelFormatter;
  @override
  @JsonKey(ignore: true)
  _$$AxisFormatImplCopyWith<_$AxisFormatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeatCell _$HeatCellFromJson(Map<String, dynamic> json) {
  return _HeatCell.fromJson(json);
}

/// @nodoc
mixin _$HeatCell {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeatCellCopyWith<HeatCell> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeatCellCopyWith<$Res> {
  factory $HeatCellCopyWith(HeatCell value, $Res Function(HeatCell) then) =
      _$HeatCellCopyWithImpl<$Res, HeatCell>;
  @useResult
  $Res call({int x, int y, double value, String? label});
}

/// @nodoc
class _$HeatCellCopyWithImpl<$Res, $Val extends HeatCell>
    implements $HeatCellCopyWith<$Res> {
  _$HeatCellCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? value = null,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeatCellImplCopyWith<$Res>
    implements $HeatCellCopyWith<$Res> {
  factory _$$HeatCellImplCopyWith(
          _$HeatCellImpl value, $Res Function(_$HeatCellImpl) then) =
      __$$HeatCellImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int x, int y, double value, String? label});
}

/// @nodoc
class __$$HeatCellImplCopyWithImpl<$Res>
    extends _$HeatCellCopyWithImpl<$Res, _$HeatCellImpl>
    implements _$$HeatCellImplCopyWith<$Res> {
  __$$HeatCellImplCopyWithImpl(
      _$HeatCellImpl _value, $Res Function(_$HeatCellImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? value = null,
    Object? label = freezed,
  }) {
    return _then(_$HeatCellImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeatCellImpl implements _HeatCell {
  const _$HeatCellImpl(
      {required this.x, required this.y, required this.value, this.label});

  factory _$HeatCellImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeatCellImplFromJson(json);

  @override
  final int x;
  @override
  final int y;
  @override
  final double value;
  @override
  final String? label;

  @override
  String toString() {
    return 'HeatCell(x: $x, y: $y, value: $value, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeatCellImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, value, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeatCellImplCopyWith<_$HeatCellImpl> get copyWith =>
      __$$HeatCellImplCopyWithImpl<_$HeatCellImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeatCellImplToJson(
      this,
    );
  }
}

abstract class _HeatCell implements HeatCell {
  const factory _HeatCell(
      {required final int x,
      required final int y,
      required final double value,
      final String? label}) = _$HeatCellImpl;

  factory _HeatCell.fromJson(Map<String, dynamic> json) =
      _$HeatCellImpl.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  double get value;
  @override
  String? get label;
  @override
  @JsonKey(ignore: true)
  _$$HeatCellImplCopyWith<_$HeatCellImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeatScaleStop _$HeatScaleStopFromJson(Map<String, dynamic> json) {
  return _HeatScaleStop.fromJson(json);
}

/// @nodoc
mixin _$HeatScaleStop {
  double get value => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeatScaleStopCopyWith<HeatScaleStop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeatScaleStopCopyWith<$Res> {
  factory $HeatScaleStopCopyWith(
          HeatScaleStop value, $Res Function(HeatScaleStop) then) =
      _$HeatScaleStopCopyWithImpl<$Res, HeatScaleStop>;
  @useResult
  $Res call({double value, @ColorConverter() Color color});
}

/// @nodoc
class _$HeatScaleStopCopyWithImpl<$Res, $Val extends HeatScaleStop>
    implements $HeatScaleStopCopyWith<$Res> {
  _$HeatScaleStopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeatScaleStopImplCopyWith<$Res>
    implements $HeatScaleStopCopyWith<$Res> {
  factory _$$HeatScaleStopImplCopyWith(
          _$HeatScaleStopImpl value, $Res Function(_$HeatScaleStopImpl) then) =
      __$$HeatScaleStopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, @ColorConverter() Color color});
}

/// @nodoc
class __$$HeatScaleStopImplCopyWithImpl<$Res>
    extends _$HeatScaleStopCopyWithImpl<$Res, _$HeatScaleStopImpl>
    implements _$$HeatScaleStopImplCopyWith<$Res> {
  __$$HeatScaleStopImplCopyWithImpl(
      _$HeatScaleStopImpl _value, $Res Function(_$HeatScaleStopImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? color = null,
  }) {
    return _then(_$HeatScaleStopImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeatScaleStopImpl implements _HeatScaleStop {
  const _$HeatScaleStopImpl(
      {required this.value, @ColorConverter() required this.color});

  factory _$HeatScaleStopImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeatScaleStopImplFromJson(json);

  @override
  final double value;
  @override
  @ColorConverter()
  final Color color;

  @override
  String toString() {
    return 'HeatScaleStop(value: $value, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeatScaleStopImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeatScaleStopImplCopyWith<_$HeatScaleStopImpl> get copyWith =>
      __$$HeatScaleStopImplCopyWithImpl<_$HeatScaleStopImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeatScaleStopImplToJson(
      this,
    );
  }
}

abstract class _HeatScaleStop implements HeatScaleStop {
  const factory _HeatScaleStop(
      {required final double value,
      @ColorConverter() required final Color color}) = _$HeatScaleStopImpl;

  factory _HeatScaleStop.fromJson(Map<String, dynamic> json) =
      _$HeatScaleStopImpl.fromJson;

  @override
  double get value;
  @override
  @ColorConverter()
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$HeatScaleStopImplCopyWith<_$HeatScaleStopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TooltipConfig _$TooltipConfigFromJson(Map<String, dynamic> json) {
  return _TooltipConfig.fromJson(json);
}

/// @nodoc
mixin _$TooltipConfig {
  bool get enabled => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String Function(dynamic, dynamic)? get formatter =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TooltipConfigCopyWith<TooltipConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TooltipConfigCopyWith<$Res> {
  factory $TooltipConfigCopyWith(
          TooltipConfig value, $Res Function(TooltipConfig) then) =
      _$TooltipConfigCopyWithImpl<$Res, TooltipConfig>;
  @useResult
  $Res call(
      {bool enabled,
      @JsonKey(ignore: true) String Function(dynamic, dynamic)? formatter});
}

/// @nodoc
class _$TooltipConfigCopyWithImpl<$Res, $Val extends TooltipConfig>
    implements $TooltipConfigCopyWith<$Res> {
  _$TooltipConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? formatter = freezed,
  }) {
    return _then(_value.copyWith(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      formatter: freezed == formatter
          ? _value.formatter
          : formatter // ignore: cast_nullable_to_non_nullable
              as String Function(dynamic, dynamic)?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TooltipConfigImplCopyWith<$Res>
    implements $TooltipConfigCopyWith<$Res> {
  factory _$$TooltipConfigImplCopyWith(
          _$TooltipConfigImpl value, $Res Function(_$TooltipConfigImpl) then) =
      __$$TooltipConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool enabled,
      @JsonKey(ignore: true) String Function(dynamic, dynamic)? formatter});
}

/// @nodoc
class __$$TooltipConfigImplCopyWithImpl<$Res>
    extends _$TooltipConfigCopyWithImpl<$Res, _$TooltipConfigImpl>
    implements _$$TooltipConfigImplCopyWith<$Res> {
  __$$TooltipConfigImplCopyWithImpl(
      _$TooltipConfigImpl _value, $Res Function(_$TooltipConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? formatter = freezed,
  }) {
    return _then(_$TooltipConfigImpl(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      formatter: freezed == formatter
          ? _value.formatter
          : formatter // ignore: cast_nullable_to_non_nullable
              as String Function(dynamic, dynamic)?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TooltipConfigImpl implements _TooltipConfig {
  const _$TooltipConfigImpl(
      {this.enabled = true, @JsonKey(ignore: true) this.formatter});

  factory _$TooltipConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$TooltipConfigImplFromJson(json);

  @override
  @JsonKey()
  final bool enabled;
  @override
  @JsonKey(ignore: true)
  final String Function(dynamic, dynamic)? formatter;

  @override
  String toString() {
    return 'TooltipConfig(enabled: $enabled, formatter: $formatter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TooltipConfigImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.formatter, formatter) ||
                other.formatter == formatter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enabled, formatter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TooltipConfigImplCopyWith<_$TooltipConfigImpl> get copyWith =>
      __$$TooltipConfigImplCopyWithImpl<_$TooltipConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TooltipConfigImplToJson(
      this,
    );
  }
}

abstract class _TooltipConfig implements TooltipConfig {
  const factory _TooltipConfig(
          {final bool enabled,
          @JsonKey(ignore: true)
          final String Function(dynamic, dynamic)? formatter}) =
      _$TooltipConfigImpl;

  factory _TooltipConfig.fromJson(Map<String, dynamic> json) =
      _$TooltipConfigImpl.fromJson;

  @override
  bool get enabled;
  @override
  @JsonKey(ignore: true)
  String Function(dynamic, dynamic)? get formatter;
  @override
  @JsonKey(ignore: true)
  _$$TooltipConfigImplCopyWith<_$TooltipConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnimationConfig {
  Duration get duration => throw _privateConstructorUsedError;
  Curve get curve => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimationConfigCopyWith<AnimationConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimationConfigCopyWith<$Res> {
  factory $AnimationConfigCopyWith(
          AnimationConfig value, $Res Function(AnimationConfig) then) =
      _$AnimationConfigCopyWithImpl<$Res, AnimationConfig>;
  @useResult
  $Res call({Duration duration, Curve curve});
}

/// @nodoc
class _$AnimationConfigCopyWithImpl<$Res, $Val extends AnimationConfig>
    implements $AnimationConfigCopyWith<$Res> {
  _$AnimationConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? curve = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      curve: null == curve
          ? _value.curve
          : curve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimationConfigImplCopyWith<$Res>
    implements $AnimationConfigCopyWith<$Res> {
  factory _$$AnimationConfigImplCopyWith(_$AnimationConfigImpl value,
          $Res Function(_$AnimationConfigImpl) then) =
      __$$AnimationConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration, Curve curve});
}

/// @nodoc
class __$$AnimationConfigImplCopyWithImpl<$Res>
    extends _$AnimationConfigCopyWithImpl<$Res, _$AnimationConfigImpl>
    implements _$$AnimationConfigImplCopyWith<$Res> {
  __$$AnimationConfigImplCopyWithImpl(
      _$AnimationConfigImpl _value, $Res Function(_$AnimationConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? curve = null,
  }) {
    return _then(_$AnimationConfigImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      curve: null == curve
          ? _value.curve
          : curve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ));
  }
}

/// @nodoc

class _$AnimationConfigImpl implements _AnimationConfig {
  const _$AnimationConfigImpl(
      {this.duration = const Duration(milliseconds: 300),
      this.curve = Curves.easeInOut});

  @override
  @JsonKey()
  final Duration duration;
  @override
  @JsonKey()
  final Curve curve;

  @override
  String toString() {
    return 'AnimationConfig(duration: $duration, curve: $curve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimationConfigImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.curve, curve) || other.curve == curve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, curve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimationConfigImplCopyWith<_$AnimationConfigImpl> get copyWith =>
      __$$AnimationConfigImplCopyWithImpl<_$AnimationConfigImpl>(
          this, _$identity);
}

abstract class _AnimationConfig implements AnimationConfig {
  const factory _AnimationConfig({final Duration duration, final Curve curve}) =
      _$AnimationConfigImpl;

  @override
  Duration get duration;
  @override
  Curve get curve;
  @override
  @JsonKey(ignore: true)
  _$$AnimationConfigImplCopyWith<_$AnimationConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
