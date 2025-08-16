import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/constants/breakpoints.dart';

class ShellScaffold extends StatelessWidget {
  final Widget child;
  final String currentPath;

  const ShellScaffold({
    super.key,
    required this.child,
    required this.currentPath,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < Breakpoints.sm;
    final isMediumScreen = screenWidth < Breakpoints.md;

    return Scaffold(
      appBar: AppBar(
        title: const Text('MFG Dashboard'),
      ),
      body: Row(
        children: [
          if (!isSmallScreen)
            NavigationRail(
              extended: !isMediumScreen,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.dashboard),
                  label: Text('Dashboard'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.bar_chart),
                  label: Text('Charts'),
                ),
              ],
              selectedIndex: _getSelectedIndex(currentPath),
              onDestinationSelected: (index) {
                switch (index) {
                  case 0:
                    context.go('/');
                    break;
                  case 1:
                    context.go('/charts');
                    break;
                }
              },
            ),
          Expanded(child: child),
        ],
      ),
      bottomNavigationBar: isSmallScreen
          ? NavigationBar(
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.dashboard),
                  label: 'Dashboard',
                ),
                NavigationDestination(
                  icon: Icon(Icons.bar_chart),
                  label: 'Charts',
                ),
              ],
              selectedIndex: _getSelectedIndex(currentPath),
              onDestinationSelected: (index) {
                switch (index) {
                  case 0:
                    context.go('/');
                    break;
                  case 1:
                    context.go('/charts');
                    break;
                }
              },
            )
          : null,
    );
  }

  int _getSelectedIndex(String path) {
    switch (path) {
      case '/':
        return 0;
      case '/charts':
        return 1;
      default:
        return 0;
    }
  }
}
