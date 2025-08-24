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
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              // TODO: Implement refresh functionality
            },
          ),
          PopupMenuButton<String>(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Your watchlist'),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: '24h',
                child: Text('24H'),
              ),
              const PopupMenuItem(
                value: '7d',
                child: Text('7D'),
              ),
              const PopupMenuItem(
                value: '1m',
                child: Text('1M'),
              ),
              const PopupMenuItem(
                value: '6m',
                child: Text('6M'),
              ),
              const PopupMenuItem(
                value: 'shift',
                child: Text('Shift'),
              ),
              const PopupMenuItem(
                value: 'custom',
                child: Text('Custom'),
              ),
            ],
            onSelected: (value) {
              // TODO: Implement time range selection
            },
          ),
          const CircleAvatar(
            radius: 16,
            backgroundColor: Colors.blue,
            child: Icon(Icons.person, color: Colors.white),
          ),
        ],
      ),
      body: Row(
        children: [
          if (!isSmallScreen)
            NavigationRail(
              extended: !isMediumScreen,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.dashboard),
                  label: Text('Dashboard'),
                ),
              ],
              selectedIndex: _getSelectedIndex(currentPath),
              onDestinationSelected: (index) {
                switch (index) {
                  case 0:
                    context.go('/');
                    break;
                  case 1:
                    context.go('/dashboard');
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
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(Icons.dashboard),
                  label: 'Dashboard',
                ),
              ],
              selectedIndex: _getSelectedIndex(currentPath),
              onDestinationSelected: (index) {
                switch (index) {
                  case 0:
                    context.go('/');
                    break;
                  case 1:
                    context.go('/dashboard');
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
      case '/dashboard':
        return 1;
      default:
        return 0;
    }
  }
}
