import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'pages/home/home_page.dart';
import 'pages/dashboard/dashboard_page.dart';
import 'modules/shell/shell_scaffold.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: '/',
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
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: '/dashboard',
            builder: (context, state) => const DashboardPage(),
          ),
        ],
      ),
    ],
  );
}
