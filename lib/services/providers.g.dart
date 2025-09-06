// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$apiServiceHash() => r'73ad3c2e8c0d458c43bdd728c0f0fb75c5c2af98';

/// See also [apiService].
@ProviderFor(apiService)
final apiServiceProvider = AutoDisposeProvider<ApiService>.internal(
  apiService,
  name: r'apiServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$apiServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ApiServiceRef = AutoDisposeProviderRef<ApiService>;
String _$plantsHash() => r'86acd51aff91568c196dac4c5183314762412e2c';

/// See also [plants].
@ProviderFor(plants)
final plantsProvider = AutoDisposeFutureProvider<List<Plant>>.internal(
  plants,
  name: r'plantsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$plantsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PlantsRef = AutoDisposeFutureProviderRef<List<Plant>>;
String _$unitsByPlantHash() => r'3fb5a6e176c031a10db0f85c7a3c0da1ba697884';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [unitsByPlant].
@ProviderFor(unitsByPlant)
const unitsByPlantProvider = UnitsByPlantFamily();

/// See also [unitsByPlant].
class UnitsByPlantFamily extends Family<AsyncValue<List<Unit>>> {
  /// See also [unitsByPlant].
  const UnitsByPlantFamily();

  /// See also [unitsByPlant].
  UnitsByPlantProvider call(
    String plantId,
  ) {
    return UnitsByPlantProvider(
      plantId,
    );
  }

  @override
  UnitsByPlantProvider getProviderOverride(
    covariant UnitsByPlantProvider provider,
  ) {
    return call(
      provider.plantId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'unitsByPlantProvider';
}

/// See also [unitsByPlant].
class UnitsByPlantProvider extends AutoDisposeFutureProvider<List<Unit>> {
  /// See also [unitsByPlant].
  UnitsByPlantProvider(
    String plantId,
  ) : this._internal(
          (ref) => unitsByPlant(
            ref as UnitsByPlantRef,
            plantId,
          ),
          from: unitsByPlantProvider,
          name: r'unitsByPlantProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$unitsByPlantHash,
          dependencies: UnitsByPlantFamily._dependencies,
          allTransitiveDependencies:
              UnitsByPlantFamily._allTransitiveDependencies,
          plantId: plantId,
        );

  UnitsByPlantProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.plantId,
  }) : super.internal();

  final String plantId;

  @override
  Override overrideWith(
    FutureOr<List<Unit>> Function(UnitsByPlantRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UnitsByPlantProvider._internal(
        (ref) => create(ref as UnitsByPlantRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        plantId: plantId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Unit>> createElement() {
    return _UnitsByPlantProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UnitsByPlantProvider && other.plantId == plantId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, plantId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UnitsByPlantRef on AutoDisposeFutureProviderRef<List<Unit>> {
  /// The parameter `plantId` of this provider.
  String get plantId;
}

class _UnitsByPlantProviderElement
    extends AutoDisposeFutureProviderElement<List<Unit>> with UnitsByPlantRef {
  _UnitsByPlantProviderElement(super.provider);

  @override
  String get plantId => (origin as UnitsByPlantProvider).plantId;
}

String _$segmentsByUnitHash() => r'd94c43aa97e311908ea1e2f7ff73c1e54fd06521';

/// See also [segmentsByUnit].
@ProviderFor(segmentsByUnit)
const segmentsByUnitProvider = SegmentsByUnitFamily();

/// See also [segmentsByUnit].
class SegmentsByUnitFamily extends Family<AsyncValue<List<Segment>>> {
  /// See also [segmentsByUnit].
  const SegmentsByUnitFamily();

  /// See also [segmentsByUnit].
  SegmentsByUnitProvider call(
    String unitId,
  ) {
    return SegmentsByUnitProvider(
      unitId,
    );
  }

  @override
  SegmentsByUnitProvider getProviderOverride(
    covariant SegmentsByUnitProvider provider,
  ) {
    return call(
      provider.unitId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'segmentsByUnitProvider';
}

/// See also [segmentsByUnit].
class SegmentsByUnitProvider extends AutoDisposeFutureProvider<List<Segment>> {
  /// See also [segmentsByUnit].
  SegmentsByUnitProvider(
    String unitId,
  ) : this._internal(
          (ref) => segmentsByUnit(
            ref as SegmentsByUnitRef,
            unitId,
          ),
          from: segmentsByUnitProvider,
          name: r'segmentsByUnitProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$segmentsByUnitHash,
          dependencies: SegmentsByUnitFamily._dependencies,
          allTransitiveDependencies:
              SegmentsByUnitFamily._allTransitiveDependencies,
          unitId: unitId,
        );

  SegmentsByUnitProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.unitId,
  }) : super.internal();

  final String unitId;

  @override
  Override overrideWith(
    FutureOr<List<Segment>> Function(SegmentsByUnitRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SegmentsByUnitProvider._internal(
        (ref) => create(ref as SegmentsByUnitRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        unitId: unitId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Segment>> createElement() {
    return _SegmentsByUnitProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SegmentsByUnitProvider && other.unitId == unitId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, unitId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SegmentsByUnitRef on AutoDisposeFutureProviderRef<List<Segment>> {
  /// The parameter `unitId` of this provider.
  String get unitId;
}

class _SegmentsByUnitProviderElement
    extends AutoDisposeFutureProviderElement<List<Segment>>
    with SegmentsByUnitRef {
  _SegmentsByUnitProviderElement(super.provider);

  @override
  String get unitId => (origin as SegmentsByUnitProvider).unitId;
}

String _$linesBySegmentHash() => r'b288fdb8edd61d6f536db71137b9c49a41730111';

/// See also [linesBySegment].
@ProviderFor(linesBySegment)
const linesBySegmentProvider = LinesBySegmentFamily();

/// See also [linesBySegment].
class LinesBySegmentFamily extends Family<AsyncValue<List<Line>>> {
  /// See also [linesBySegment].
  const LinesBySegmentFamily();

  /// See also [linesBySegment].
  LinesBySegmentProvider call(
    String segmentId,
  ) {
    return LinesBySegmentProvider(
      segmentId,
    );
  }

  @override
  LinesBySegmentProvider getProviderOverride(
    covariant LinesBySegmentProvider provider,
  ) {
    return call(
      provider.segmentId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'linesBySegmentProvider';
}

/// See also [linesBySegment].
class LinesBySegmentProvider extends AutoDisposeFutureProvider<List<Line>> {
  /// See also [linesBySegment].
  LinesBySegmentProvider(
    String segmentId,
  ) : this._internal(
          (ref) => linesBySegment(
            ref as LinesBySegmentRef,
            segmentId,
          ),
          from: linesBySegmentProvider,
          name: r'linesBySegmentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$linesBySegmentHash,
          dependencies: LinesBySegmentFamily._dependencies,
          allTransitiveDependencies:
              LinesBySegmentFamily._allTransitiveDependencies,
          segmentId: segmentId,
        );

  LinesBySegmentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.segmentId,
  }) : super.internal();

  final String segmentId;

  @override
  Override overrideWith(
    FutureOr<List<Line>> Function(LinesBySegmentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LinesBySegmentProvider._internal(
        (ref) => create(ref as LinesBySegmentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        segmentId: segmentId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Line>> createElement() {
    return _LinesBySegmentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LinesBySegmentProvider && other.segmentId == segmentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, segmentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LinesBySegmentRef on AutoDisposeFutureProviderRef<List<Line>> {
  /// The parameter `segmentId` of this provider.
  String get segmentId;
}

class _LinesBySegmentProviderElement
    extends AutoDisposeFutureProviderElement<List<Line>>
    with LinesBySegmentRef {
  _LinesBySegmentProviderElement(super.provider);

  @override
  String get segmentId => (origin as LinesBySegmentProvider).segmentId;
}

String _$machinesByLineHash() => r'984481c774c6fc9b9eeac8522fc64ce8bdc8ef34';

/// See also [machinesByLine].
@ProviderFor(machinesByLine)
const machinesByLineProvider = MachinesByLineFamily();

/// See also [machinesByLine].
class MachinesByLineFamily extends Family<AsyncValue<List<Machine>>> {
  /// See also [machinesByLine].
  const MachinesByLineFamily();

  /// See also [machinesByLine].
  MachinesByLineProvider call(
    String lineId,
  ) {
    return MachinesByLineProvider(
      lineId,
    );
  }

  @override
  MachinesByLineProvider getProviderOverride(
    covariant MachinesByLineProvider provider,
  ) {
    return call(
      provider.lineId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'machinesByLineProvider';
}

/// See also [machinesByLine].
class MachinesByLineProvider extends AutoDisposeFutureProvider<List<Machine>> {
  /// See also [machinesByLine].
  MachinesByLineProvider(
    String lineId,
  ) : this._internal(
          (ref) => machinesByLine(
            ref as MachinesByLineRef,
            lineId,
          ),
          from: machinesByLineProvider,
          name: r'machinesByLineProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$machinesByLineHash,
          dependencies: MachinesByLineFamily._dependencies,
          allTransitiveDependencies:
              MachinesByLineFamily._allTransitiveDependencies,
          lineId: lineId,
        );

  MachinesByLineProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.lineId,
  }) : super.internal();

  final String lineId;

  @override
  Override overrideWith(
    FutureOr<List<Machine>> Function(MachinesByLineRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MachinesByLineProvider._internal(
        (ref) => create(ref as MachinesByLineRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        lineId: lineId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Machine>> createElement() {
    return _MachinesByLineProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MachinesByLineProvider && other.lineId == lineId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, lineId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MachinesByLineRef on AutoDisposeFutureProviderRef<List<Machine>> {
  /// The parameter `lineId` of this provider.
  String get lineId;
}

class _MachinesByLineProviderElement
    extends AutoDisposeFutureProviderElement<List<Machine>>
    with MachinesByLineRef {
  _MachinesByLineProviderElement(super.provider);

  @override
  String get lineId => (origin as MachinesByLineProvider).lineId;
}

String _$machinesByUnitHash() => r'6f90a290d9dd62c5b73436d45743c842c158372b';

/// See also [machinesByUnit].
@ProviderFor(machinesByUnit)
const machinesByUnitProvider = MachinesByUnitFamily();

/// See also [machinesByUnit].
class MachinesByUnitFamily extends Family<AsyncValue<List<Machine>>> {
  /// See also [machinesByUnit].
  const MachinesByUnitFamily();

  /// See also [machinesByUnit].
  MachinesByUnitProvider call(
    String unitId, {
    String? lineId,
  }) {
    return MachinesByUnitProvider(
      unitId,
      lineId: lineId,
    );
  }

  @override
  MachinesByUnitProvider getProviderOverride(
    covariant MachinesByUnitProvider provider,
  ) {
    return call(
      provider.unitId,
      lineId: provider.lineId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'machinesByUnitProvider';
}

/// See also [machinesByUnit].
class MachinesByUnitProvider extends AutoDisposeFutureProvider<List<Machine>> {
  /// See also [machinesByUnit].
  MachinesByUnitProvider(
    String unitId, {
    String? lineId,
  }) : this._internal(
          (ref) => machinesByUnit(
            ref as MachinesByUnitRef,
            unitId,
            lineId: lineId,
          ),
          from: machinesByUnitProvider,
          name: r'machinesByUnitProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$machinesByUnitHash,
          dependencies: MachinesByUnitFamily._dependencies,
          allTransitiveDependencies:
              MachinesByUnitFamily._allTransitiveDependencies,
          unitId: unitId,
          lineId: lineId,
        );

  MachinesByUnitProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.unitId,
    required this.lineId,
  }) : super.internal();

  final String unitId;
  final String? lineId;

  @override
  Override overrideWith(
    FutureOr<List<Machine>> Function(MachinesByUnitRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MachinesByUnitProvider._internal(
        (ref) => create(ref as MachinesByUnitRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        unitId: unitId,
        lineId: lineId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Machine>> createElement() {
    return _MachinesByUnitProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MachinesByUnitProvider &&
        other.unitId == unitId &&
        other.lineId == lineId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, unitId.hashCode);
    hash = _SystemHash.combine(hash, lineId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MachinesByUnitRef on AutoDisposeFutureProviderRef<List<Machine>> {
  /// The parameter `unitId` of this provider.
  String get unitId;

  /// The parameter `lineId` of this provider.
  String? get lineId;
}

class _MachinesByUnitProviderElement
    extends AutoDisposeFutureProviderElement<List<Machine>>
    with MachinesByUnitRef {
  _MachinesByUnitProviderElement(super.provider);

  @override
  String get unitId => (origin as MachinesByUnitProvider).unitId;
  @override
  String? get lineId => (origin as MachinesByUnitProvider).lineId;
}

String _$shiftsHash() => r'e074e1815e8d501299dd73d4fb95ea9a2c6a6b30';

/// See also [shifts].
@ProviderFor(shifts)
final shiftsProvider =
    AutoDisposeFutureProvider<List<Map<String, dynamic>>>.internal(
  shifts,
  name: r'shiftsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$shiftsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ShiftsRef = AutoDisposeFutureProviderRef<List<Map<String, dynamic>>>;
String _$operatorsHash() => r'8788dc8ac332fd93000265fbe56eae9c04b42ee4';

/// See also [operators].
@ProviderFor(operators)
final operatorsProvider =
    AutoDisposeFutureProvider<List<Map<String, dynamic>>>.internal(
  operators,
  name: r'operatorsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$operatorsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef OperatorsRef = AutoDisposeFutureProviderRef<List<Map<String, dynamic>>>;
String _$productsHash() => r'227ccd9b4c23fc83665dbee8bac07cb4f41c7b6d';

/// See also [products].
@ProviderFor(products)
final productsProvider =
    AutoDisposeFutureProvider<List<Map<String, dynamic>>>.internal(
  products,
  name: r'productsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$productsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductsRef = AutoDisposeFutureProviderRef<List<Map<String, dynamic>>>;
String _$outputTimeseriesHash() => r'22636b2482300d2e92789187891c0557e2e96a8c';

/// See also [outputTimeseries].
@ProviderFor(outputTimeseries)
const outputTimeseriesProvider = OutputTimeseriesFamily();

/// See also [outputTimeseries].
class OutputTimeseriesFamily
    extends Family<AsyncValue<OutputTimeseriesResponse>> {
  /// See also [outputTimeseries].
  const OutputTimeseriesFamily();

  /// See also [outputTimeseries].
  OutputTimeseriesProvider call(
    FilterState filters,
  ) {
    return OutputTimeseriesProvider(
      filters,
    );
  }

  @override
  OutputTimeseriesProvider getProviderOverride(
    covariant OutputTimeseriesProvider provider,
  ) {
    return call(
      provider.filters,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'outputTimeseriesProvider';
}

/// See also [outputTimeseries].
class OutputTimeseriesProvider
    extends AutoDisposeFutureProvider<OutputTimeseriesResponse> {
  /// See also [outputTimeseries].
  OutputTimeseriesProvider(
    FilterState filters,
  ) : this._internal(
          (ref) => outputTimeseries(
            ref as OutputTimeseriesRef,
            filters,
          ),
          from: outputTimeseriesProvider,
          name: r'outputTimeseriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$outputTimeseriesHash,
          dependencies: OutputTimeseriesFamily._dependencies,
          allTransitiveDependencies:
              OutputTimeseriesFamily._allTransitiveDependencies,
          filters: filters,
        );

  OutputTimeseriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filters,
  }) : super.internal();

  final FilterState filters;

  @override
  Override overrideWith(
    FutureOr<OutputTimeseriesResponse> Function(OutputTimeseriesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: OutputTimeseriesProvider._internal(
        (ref) => create(ref as OutputTimeseriesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filters: filters,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<OutputTimeseriesResponse> createElement() {
    return _OutputTimeseriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OutputTimeseriesProvider && other.filters == filters;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filters.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin OutputTimeseriesRef
    on AutoDisposeFutureProviderRef<OutputTimeseriesResponse> {
  /// The parameter `filters` of this provider.
  FilterState get filters;
}

class _OutputTimeseriesProviderElement
    extends AutoDisposeFutureProviderElement<OutputTimeseriesResponse>
    with OutputTimeseriesRef {
  _OutputTimeseriesProviderElement(super.provider);

  @override
  FilterState get filters => (origin as OutputTimeseriesProvider).filters;
}

String _$performanceTimeseriesHash() =>
    r'8fa0a0b4cff249448fa35aa0b1349e1374b1b4ac';

/// See also [performanceTimeseries].
@ProviderFor(performanceTimeseries)
const performanceTimeseriesProvider = PerformanceTimeseriesFamily();

/// See also [performanceTimeseries].
class PerformanceTimeseriesFamily
    extends Family<AsyncValue<PerformanceTimeseriesResponse>> {
  /// See also [performanceTimeseries].
  const PerformanceTimeseriesFamily();

  /// See also [performanceTimeseries].
  PerformanceTimeseriesProvider call(
    FilterState filters,
  ) {
    return PerformanceTimeseriesProvider(
      filters,
    );
  }

  @override
  PerformanceTimeseriesProvider getProviderOverride(
    covariant PerformanceTimeseriesProvider provider,
  ) {
    return call(
      provider.filters,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'performanceTimeseriesProvider';
}

/// See also [performanceTimeseries].
class PerformanceTimeseriesProvider
    extends AutoDisposeFutureProvider<PerformanceTimeseriesResponse> {
  /// See also [performanceTimeseries].
  PerformanceTimeseriesProvider(
    FilterState filters,
  ) : this._internal(
          (ref) => performanceTimeseries(
            ref as PerformanceTimeseriesRef,
            filters,
          ),
          from: performanceTimeseriesProvider,
          name: r'performanceTimeseriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$performanceTimeseriesHash,
          dependencies: PerformanceTimeseriesFamily._dependencies,
          allTransitiveDependencies:
              PerformanceTimeseriesFamily._allTransitiveDependencies,
          filters: filters,
        );

  PerformanceTimeseriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filters,
  }) : super.internal();

  final FilterState filters;

  @override
  Override overrideWith(
    FutureOr<PerformanceTimeseriesResponse> Function(
            PerformanceTimeseriesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PerformanceTimeseriesProvider._internal(
        (ref) => create(ref as PerformanceTimeseriesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filters: filters,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PerformanceTimeseriesResponse>
      createElement() {
    return _PerformanceTimeseriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PerformanceTimeseriesProvider && other.filters == filters;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filters.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PerformanceTimeseriesRef
    on AutoDisposeFutureProviderRef<PerformanceTimeseriesResponse> {
  /// The parameter `filters` of this provider.
  FilterState get filters;
}

class _PerformanceTimeseriesProviderElement
    extends AutoDisposeFutureProviderElement<PerformanceTimeseriesResponse>
    with PerformanceTimeseriesRef {
  _PerformanceTimeseriesProviderElement(super.provider);

  @override
  FilterState get filters => (origin as PerformanceTimeseriesProvider).filters;
}

String _$outputAggregateHash() => r'39f300596a85d77c4b4fe1521396cca5ba498b25';

/// See also [outputAggregate].
@ProviderFor(outputAggregate)
const outputAggregateProvider = OutputAggregateFamily();

/// See also [outputAggregate].
class OutputAggregateFamily
    extends Family<AsyncValue<OutputAggregateResponse>> {
  /// See also [outputAggregate].
  const OutputAggregateFamily();

  /// See also [outputAggregate].
  OutputAggregateProvider call(
    FilterState filters,
  ) {
    return OutputAggregateProvider(
      filters,
    );
  }

  @override
  OutputAggregateProvider getProviderOverride(
    covariant OutputAggregateProvider provider,
  ) {
    return call(
      provider.filters,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'outputAggregateProvider';
}

/// See also [outputAggregate].
class OutputAggregateProvider
    extends AutoDisposeFutureProvider<OutputAggregateResponse> {
  /// See also [outputAggregate].
  OutputAggregateProvider(
    FilterState filters,
  ) : this._internal(
          (ref) => outputAggregate(
            ref as OutputAggregateRef,
            filters,
          ),
          from: outputAggregateProvider,
          name: r'outputAggregateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$outputAggregateHash,
          dependencies: OutputAggregateFamily._dependencies,
          allTransitiveDependencies:
              OutputAggregateFamily._allTransitiveDependencies,
          filters: filters,
        );

  OutputAggregateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filters,
  }) : super.internal();

  final FilterState filters;

  @override
  Override overrideWith(
    FutureOr<OutputAggregateResponse> Function(OutputAggregateRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: OutputAggregateProvider._internal(
        (ref) => create(ref as OutputAggregateRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filters: filters,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<OutputAggregateResponse> createElement() {
    return _OutputAggregateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OutputAggregateProvider && other.filters == filters;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filters.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin OutputAggregateRef
    on AutoDisposeFutureProviderRef<OutputAggregateResponse> {
  /// The parameter `filters` of this provider.
  FilterState get filters;
}

class _OutputAggregateProviderElement
    extends AutoDisposeFutureProviderElement<OutputAggregateResponse>
    with OutputAggregateRef {
  _OutputAggregateProviderElement(super.provider);

  @override
  FilterState get filters => (origin as OutputAggregateProvider).filters;
}

String _$performanceAggregateHash() =>
    r'bad347eeaaf177f65430df289e211cb3c654a734';

/// See also [performanceAggregate].
@ProviderFor(performanceAggregate)
const performanceAggregateProvider = PerformanceAggregateFamily();

/// See also [performanceAggregate].
class PerformanceAggregateFamily
    extends Family<AsyncValue<PerformanceAggregateResponse>> {
  /// See also [performanceAggregate].
  const PerformanceAggregateFamily();

  /// See also [performanceAggregate].
  PerformanceAggregateProvider call(
    FilterState filters,
  ) {
    return PerformanceAggregateProvider(
      filters,
    );
  }

  @override
  PerformanceAggregateProvider getProviderOverride(
    covariant PerformanceAggregateProvider provider,
  ) {
    return call(
      provider.filters,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'performanceAggregateProvider';
}

/// See also [performanceAggregate].
class PerformanceAggregateProvider
    extends AutoDisposeFutureProvider<PerformanceAggregateResponse> {
  /// See also [performanceAggregate].
  PerformanceAggregateProvider(
    FilterState filters,
  ) : this._internal(
          (ref) => performanceAggregate(
            ref as PerformanceAggregateRef,
            filters,
          ),
          from: performanceAggregateProvider,
          name: r'performanceAggregateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$performanceAggregateHash,
          dependencies: PerformanceAggregateFamily._dependencies,
          allTransitiveDependencies:
              PerformanceAggregateFamily._allTransitiveDependencies,
          filters: filters,
        );

  PerformanceAggregateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filters,
  }) : super.internal();

  final FilterState filters;

  @override
  Override overrideWith(
    FutureOr<PerformanceAggregateResponse> Function(
            PerformanceAggregateRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PerformanceAggregateProvider._internal(
        (ref) => create(ref as PerformanceAggregateRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filters: filters,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PerformanceAggregateResponse>
      createElement() {
    return _PerformanceAggregateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PerformanceAggregateProvider && other.filters == filters;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filters.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PerformanceAggregateRef
    on AutoDisposeFutureProviderRef<PerformanceAggregateResponse> {
  /// The parameter `filters` of this provider.
  FilterState get filters;
}

class _PerformanceAggregateProviderElement
    extends AutoDisposeFutureProviderElement<PerformanceAggregateResponse>
    with PerformanceAggregateRef {
  _PerformanceAggregateProviderElement(super.provider);

  @override
  FilterState get filters => (origin as PerformanceAggregateProvider).filters;
}

String _$availabilityTimeseriesHash() =>
    r'f0faca4a64540f0dad98cd44f78c7636d91a58de';

/// See also [availabilityTimeseries].
@ProviderFor(availabilityTimeseries)
const availabilityTimeseriesProvider = AvailabilityTimeseriesFamily();

/// See also [availabilityTimeseries].
class AvailabilityTimeseriesFamily
    extends Family<AsyncValue<AvailabilityTimeseriesResponse>> {
  /// See also [availabilityTimeseries].
  const AvailabilityTimeseriesFamily();

  /// See also [availabilityTimeseries].
  AvailabilityTimeseriesProvider call(
    FilterState filters,
  ) {
    return AvailabilityTimeseriesProvider(
      filters,
    );
  }

  @override
  AvailabilityTimeseriesProvider getProviderOverride(
    covariant AvailabilityTimeseriesProvider provider,
  ) {
    return call(
      provider.filters,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'availabilityTimeseriesProvider';
}

/// See also [availabilityTimeseries].
class AvailabilityTimeseriesProvider
    extends AutoDisposeFutureProvider<AvailabilityTimeseriesResponse> {
  /// See also [availabilityTimeseries].
  AvailabilityTimeseriesProvider(
    FilterState filters,
  ) : this._internal(
          (ref) => availabilityTimeseries(
            ref as AvailabilityTimeseriesRef,
            filters,
          ),
          from: availabilityTimeseriesProvider,
          name: r'availabilityTimeseriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$availabilityTimeseriesHash,
          dependencies: AvailabilityTimeseriesFamily._dependencies,
          allTransitiveDependencies:
              AvailabilityTimeseriesFamily._allTransitiveDependencies,
          filters: filters,
        );

  AvailabilityTimeseriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filters,
  }) : super.internal();

  final FilterState filters;

  @override
  Override overrideWith(
    FutureOr<AvailabilityTimeseriesResponse> Function(
            AvailabilityTimeseriesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AvailabilityTimeseriesProvider._internal(
        (ref) => create(ref as AvailabilityTimeseriesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filters: filters,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AvailabilityTimeseriesResponse>
      createElement() {
    return _AvailabilityTimeseriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AvailabilityTimeseriesProvider && other.filters == filters;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filters.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AvailabilityTimeseriesRef
    on AutoDisposeFutureProviderRef<AvailabilityTimeseriesResponse> {
  /// The parameter `filters` of this provider.
  FilterState get filters;
}

class _AvailabilityTimeseriesProviderElement
    extends AutoDisposeFutureProviderElement<AvailabilityTimeseriesResponse>
    with AvailabilityTimeseriesRef {
  _AvailabilityTimeseriesProviderElement(super.provider);

  @override
  FilterState get filters => (origin as AvailabilityTimeseriesProvider).filters;
}

String _$availabilityAggregateHash() =>
    r'80ee4076fb9739d5b96d0d121eff25036679e3f2';

/// See also [availabilityAggregate].
@ProviderFor(availabilityAggregate)
const availabilityAggregateProvider = AvailabilityAggregateFamily();

/// See also [availabilityAggregate].
class AvailabilityAggregateFamily
    extends Family<AsyncValue<AvailabilityAggregateResponse>> {
  /// See also [availabilityAggregate].
  const AvailabilityAggregateFamily();

  /// See also [availabilityAggregate].
  AvailabilityAggregateProvider call(
    FilterState filters,
  ) {
    return AvailabilityAggregateProvider(
      filters,
    );
  }

  @override
  AvailabilityAggregateProvider getProviderOverride(
    covariant AvailabilityAggregateProvider provider,
  ) {
    return call(
      provider.filters,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'availabilityAggregateProvider';
}

/// See also [availabilityAggregate].
class AvailabilityAggregateProvider
    extends AutoDisposeFutureProvider<AvailabilityAggregateResponse> {
  /// See also [availabilityAggregate].
  AvailabilityAggregateProvider(
    FilterState filters,
  ) : this._internal(
          (ref) => availabilityAggregate(
            ref as AvailabilityAggregateRef,
            filters,
          ),
          from: availabilityAggregateProvider,
          name: r'availabilityAggregateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$availabilityAggregateHash,
          dependencies: AvailabilityAggregateFamily._dependencies,
          allTransitiveDependencies:
              AvailabilityAggregateFamily._allTransitiveDependencies,
          filters: filters,
        );

  AvailabilityAggregateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filters,
  }) : super.internal();

  final FilterState filters;

  @override
  Override overrideWith(
    FutureOr<AvailabilityAggregateResponse> Function(
            AvailabilityAggregateRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AvailabilityAggregateProvider._internal(
        (ref) => create(ref as AvailabilityAggregateRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filters: filters,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AvailabilityAggregateResponse>
      createElement() {
    return _AvailabilityAggregateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AvailabilityAggregateProvider && other.filters == filters;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filters.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AvailabilityAggregateRef
    on AutoDisposeFutureProviderRef<AvailabilityAggregateResponse> {
  /// The parameter `filters` of this provider.
  FilterState get filters;
}

class _AvailabilityAggregateProviderElement
    extends AutoDisposeFutureProviderElement<AvailabilityAggregateResponse>
    with AvailabilityAggregateRef {
  _AvailabilityAggregateProviderElement(super.provider);

  @override
  FilterState get filters => (origin as AvailabilityAggregateProvider).filters;
}

String _$filterNotifierHash() => r'8aed88b6f6c87a18c6b006647961e2134b0fcd7d';

/// See also [FilterNotifier].
@ProviderFor(FilterNotifier)
final filterNotifierProvider =
    AutoDisposeNotifierProvider<FilterNotifier, FilterState>.internal(
  FilterNotifier.new,
  name: r'filterNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filterNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FilterNotifier = AutoDisposeNotifier<FilterState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
