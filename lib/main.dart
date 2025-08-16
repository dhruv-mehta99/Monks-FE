import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';
import 'charts/adapters/default_chart_factory.dart';
import 'charts/core/chart_registry.dart';

void main() {
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