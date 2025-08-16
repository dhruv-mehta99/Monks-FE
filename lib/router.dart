import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'modules/charts/charts.dart' as charts;
import 'modules/dashboard/dashboard.dart' as dashboard;
import 'modules/shell/shell_scaffold.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return ShellScaffold(
            currentPath: state.uri.path,
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const dashboard.DashboardPage(),
          ),
          GoRoute(
            path: '/charts',
            builder: (context, state) => const charts.ChartsGalleryPage(),
          ),
        ],
      ),
    ],
  );
}
