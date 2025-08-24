import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'app.dart';
import 'charts/adapters/default_chart_factory.dart';
import 'charts/core/chart_registry.dart';

void main() {
  // Configure web for proper URL routing
  if (kIsWeb) {
    // Set URL strategy to use path instead of hash
    usePathUrlStrategy();
  }

  runApp(
    ProviderScope(
      overrides: [
        chartRegistryProvider.overrideWithValue(
          ChartRegistry(defaultFactory: DefaultChartFactory()),
        ),
      ],
      child: const App(),
    ),
  );
}
