import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/constants/breakpoints.dart';

class ShellScaffold extends StatefulWidget {
  final Widget child;
  final String currentPath;

  const ShellScaffold({
    super.key,
    required this.child,
    required this.currentPath,
  });

  @override
  State<ShellScaffold> createState() => _ShellScaffoldState();
}

class _ShellScaffoldState extends State<ShellScaffold> {
  bool _isExpanded = false;

  void _toggleSidebar() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  void _closeSidebar() {
    setState(() {
      _isExpanded = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < Breakpoints.sm;

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
              body: Stack(
          children: [
            // Main content with left margin to avoid sidebar overlap
            Padding(
              padding: EdgeInsets.only(
                left: isSmallScreen ? 0 : 60, // Width of collapsed sidebar
              ),
              child: widget.child,
            ),



          // Collapsible sidebar that expands in place
          if (!isSmallScreen)
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                width: _isExpanded ? 200 : 60,
                decoration: BoxDecoration(
                  color: Theme.of(context).drawerTheme.backgroundColor ??
                      Theme.of(context).cardColor,
                  border: Border(
                    right: BorderSide(
                      color: Theme.of(context).dividerColor.withOpacity(0.3),
                      width: 1,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      offset: const Offset(1, 0),
                    ),
                  ],
                ),
                child: _isExpanded ? _buildExpandedSidebar() : _buildCollapsedSidebar(),
              ),
            ),
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
              selectedIndex: _getSelectedIndex(widget.currentPath),
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

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: isSelected ? Theme.of(context).primaryColor.withOpacity(0.1) : null,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        leading: Icon(
          icon,
          color: isSelected ? Theme.of(context).primaryColor : Colors.grey[300],
          size: 20,
        ),
        title: Text(
          label,
          style: TextStyle(
            color: isSelected ? Theme.of(context).primaryColor : Colors.grey[300],
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            fontSize: 14,
          ),
        ),
        onTap: onTap,
        dense: true,
      ),
    );
  }

  Widget _buildCollapsedSidebar() {
    return Column(
      children: [
        const SizedBox(height: 16),
        // Toggle button
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            icon: Icon(
              Icons.chevron_right,
              color: Colors.grey[600],
              size: 20,
            ),
            onPressed: _toggleSidebar,
            tooltip: 'Expand',
          ),
        ),
        const SizedBox(height: 16),
        // Navigation icons
        _buildCollapsedNavItem(
          icon: Icons.home,
          isSelected: widget.currentPath == '/',
          onTap: () => context.go('/'),
          tooltip: 'Home',
        ),
        _buildCollapsedNavItem(
          icon: Icons.dashboard,
          isSelected: widget.currentPath == '/dashboard',
          onTap: () => context.go('/dashboard'),
          tooltip: 'Dashboard',
        ),
      ],
    );
  }

  Widget _buildExpandedSidebar() {
    return Column(
      children: [
        // Header with close button
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).dividerColor.withOpacity(0.2),
              ),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Navigation',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: _closeSidebar,
                iconSize: 20,
              ),
            ],
          ),
        ),

        // Navigation items
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              _buildNavItem(
                icon: Icons.home,
                label: 'Home',
                isSelected: widget.currentPath == '/',
                onTap: () {
                  context.go('/');
                  _closeSidebar();
                },
              ),
              _buildNavItem(
                icon: Icons.dashboard,
                label: 'Dashboard',
                isSelected: widget.currentPath == '/dashboard',
                onTap: () {
                  context.go('/dashboard');
                  _closeSidebar();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCollapsedNavItem({
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
    required String tooltip,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: isSelected
            ? Theme.of(context).primaryColor.withOpacity(0.2)
            : Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: isSelected
            ? Border.all(
                color: Theme.of(context).primaryColor.withOpacity(0.3),
                width: 1,
              )
            : null,
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: isSelected
              ? Theme.of(context).primaryColor
              : Colors.grey[300],
          size: 22,
        ),
        onPressed: onTap,
        tooltip: tooltip,
      ),
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
