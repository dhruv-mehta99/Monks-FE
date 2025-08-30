import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'chart_adapter.dart';

/// Registry for chart adapters
class ChartRegistry {
  ChartRegistry({
    required this.defaultFactory,
    Map<String, ChartAdapterFactory>? additionalFactories,
  }) : _factories = {'default': defaultFactory, ...?additionalFactories};

  final ChartAdapterFactory defaultFactory;
  final Map<String, ChartAdapterFactory> _factories;

  /// Get a chart adapter factory by name
  ChartAdapterFactory getFactory(String? name) => _factories[name] ?? defaultFactory;

  /// Register a new chart adapter factory
  void registerFactory(String name, ChartAdapterFactory factory) {
    _factories[name] = factory;
  }

  /// Unregister a chart adapter factory
  void unregisterFactory(String name) {
    if (name != 'default') {
      _factories.remove(name);
    }
  }
}

/// Provider for the chart registry (to be overridden at app root)
final chartRegistryProvider = Provider<ChartRegistry>((ref) {
  throw UnimplementedError(
    'chartRegistryProvider must be overridden with a valid implementation',
  );
});

/// Provider for the active chart adapter factory
final activeChartFactoryProvider =
    Provider.family<ChartAdapterFactory, String?>((ref, name) {
      final registry = ref.watch(chartRegistryProvider);
      return registry.getFactory(name);
    });
