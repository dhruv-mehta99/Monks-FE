import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/shared_widgets/charts/chart_extensions.dart';
import '../../core/shared_widgets/shared_widgets.dart';
import '../../models/models.dart';
import '../../services/services.dart';

enum KpiType { output, availability }

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  KpiType _selectedKpi = KpiType.output;
  bool _isFilterSidebarOpen = true;

  void _selectKpi(KpiType kpi) {
    setState(() {
      _selectedKpi = kpi;
    });
  }

  void _toggleFilterSidebar() {
    setState(() {
      _isFilterSidebarOpen = !_isFilterSidebarOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    final filterState = ref.watch(filterNotifierProvider);

    return Scaffold(
      body: Row(
        children: [
          // Main Content Area
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header with Filter Toggle Button
                  Row(
                    children: [
                      Text(
                        'Manufacturing Dashboard',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: _toggleFilterSidebar,
                        icon: Icon(
                          _isFilterSidebarOpen
                              ? Icons.filter_list_off
                              : Icons.filter_list,
                        ),
                        tooltip: _isFilterSidebarOpen
                            ? 'Hide Filters'
                            : 'Show Filters',
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Charts Section - Only show when machine is selected
                  if (filterState.selectedMachineIds.isNotEmpty) ...[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // KPI Tabs
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              child: Row(
                                children: [
                                  _buildKpiTab(
                                    label: 'Output KPI',
                                    isSelected: _selectedKpi == KpiType.output,
                                    onTap: () => _selectKpi(KpiType.output),
                                  ),
                                  const SizedBox(width: 16),
                                  _buildKpiTab(
                                    label: 'Availability KPI',
                                    isSelected:
                                        _selectedKpi == KpiType.availability,
                                    onTap: () =>
                                        _selectKpi(KpiType.availability),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),

                          // Single Chart based on selected KPI
                          Expanded(
                            child: _buildSelectedKpiChart(filterState, ref),
                          ),
                        ],
                      ),
                    ),
                  ] else ...[
                    // Show message when no machine is selected
                    Expanded(
                      child: Center(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.settings,
                                  size: 64,
                                  color: Colors.grey[400],
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  'Select One or More Machines to View Charts',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall,
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Please select a machine from the filters to display KPI charts',
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(color: Colors.grey[600]),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),

          // Collapsible Filter Sidebar
          FilterSidebar(
            isOpen: _isFilterSidebarOpen,
            onToggle: _toggleFilterSidebar,
            filterState: filterState,
          ),
        ],
      ),
    );
  }

  // Helper method to get machine name for chart titles
  String _getMachineName(FilterState filters, WidgetRef ref) {
    if (filters.machineId == null) return '';

    // Try to get machine name from the machines provider
    final machinesAsync = ref.watch(
      machinesByUnitProvider(filters.unitId ?? '', lineId: filters.lineId),
    );

    return machinesAsync.when(
      data: (machines) {
        final machine = machines.firstWhere(
          (m) => m.machineId == filters.machineId,
          orElse: () => Machine(
            machineId: filters.machineId!,
            machineName: 'Unknown Machine',
            machineType: '',
            machineLocation: '',
            commissionedOn: DateTime.now(),
            lastMaintenanceDate: DateTime.now(),
            status: MachineStatus.active,
            lineId: filters.lineId ?? '',
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          ),
        );
        return machine.machineName;
      },
      loading: () => 'Loading...',
      error: (_, __) => 'Unknown Machine',
    );
  }

  // Build KPI tab widget
  Widget _buildKpiTab({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) => GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Theme.of(context).primaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected
              ? Theme.of(context).primaryColor
              : Theme.of(context).dividerColor.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected
              ? Colors.white
              : Theme.of(context).textTheme.bodyMedium?.color,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          fontSize: 14,
        ),
      ),
    ),
  );

  // Build the selected KPI chart
  Widget _buildSelectedKpiChart(FilterState filterState, WidgetRef ref) {
    // Use multi-machine providers if multiple machines are selected, otherwise use single machine
    final useMultiMachine = filterState.selectedMachineIds.length > 1;

    final outputDataAsync = useMultiMachine
        ? ref.watch(multiMachineOutputTimeseriesProvider(filterState))
        : ref.watch(outputTimeseriesProvider(filterState));
    final availabilityDataAsync = useMultiMachine
        ? ref.watch(multiMachineAvailabilityTimeseriesProvider(filterState))
        : ref.watch(availabilityTimeseriesProvider(filterState));

    switch (_selectedKpi) {
      case KpiType.output:
        return outputDataAsync.when(
          data: (data) {
            // Handle both single and multi-machine data
            final outputSeries = useMultiMachine
                ? _combineMultiMachineOutputData(
                    data as List<OutputTimeseriesResponse>,
                  )
                : (data as OutputTimeseriesResponse).series;

            // Convert to generic chart data
            final series = outputSeries
                .map((s) => s.toChartTimeseries())
                .toList();

            return KpiLineChart(
              title: useMultiMachine
                  ? 'Output Over Time - Multiple Machines'
                  : 'Output Over Time - ${_getMachineName(filterState, ref)}',
              data: series,
              yAxisLabel: 'Output Quantity',
              showLegend: true,
              maxY: 100.0, // Set maximum Y-axis value to 100 for output KPI
              colors: const [
                Color(0xFF2196F3), // Blue
                Color(0xFF4CAF50), // Green
                Color(0xFFF44336), // Red
                Color(0xFFFF9800), // Orange
                Color(0xFF9C27B0), // Purple
                Color(0xFF00BCD4), // Cyan
                Color(0xFFFFEB3B), // Yellow
                Color(0xFF795548), // Brown
              ],
              machineNames: _getMachineNamesMap(filterState, ref),
            );
          },
          loading: () => const Card(
            child: SizedBox.expand(
              child: Center(child: CircularProgressIndicator()),
            ),
          ),
          error: (error, stack) => Card(
            child: SizedBox.expand(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error_outline, size: 48, color: Colors.red[400]),
                    const SizedBox(height: 16),
                    Text(
                      'Error loading data',
                      style: TextStyle(fontSize: 16, color: Colors.red[600]),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      error.toString(),
                      style: TextStyle(fontSize: 14, color: Colors.red[500]),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );

      case KpiType.availability:
        return availabilityDataAsync.when(
          data: (data) {
            // Handle both single and multi-machine data
            final availabilitySeries = useMultiMachine
                ? _combineMultiMachineAvailabilityData(
                    data as List<AvailabilityTimeseriesResponse>,
                  )
                : (data as AvailabilityTimeseriesResponse).series;

            // Convert to generic chart data
            final series = availabilitySeries
                .map((s) => s.toChartTimeseries())
                .toList();

            return KpiLineChart(
              title: useMultiMachine
                  ? 'Machine Availability Over Time - Multiple Machines'
                  : 'Machine Availability Over Time - ${_getMachineName(filterState, ref)}',
              data: series,
              yAxisLabel: 'Availability %',
              maxY:
                  100.0, // Set maximum Y-axis value to 100 for availability KPI
              showLegend: true,
              colors: const [
                Color(0xFF4CAF50), // Green
                Color(0xFF2196F3), // Blue
                Color(0xFFFF9800), // Orange
                Color(0xFF9C27B0), // Purple
                Color(0xFF00BCD4), // Cyan
                Color(0xFFF44336), // Red
                Color(0xFFFFEB3B), // Yellow
                Color(0xFF795548), // Brown
              ],
              machineNames: _getMachineNamesMap(filterState, ref),
            );
          },
          loading: () => const Card(
            child: SizedBox.expand(
              child: Center(child: CircularProgressIndicator()),
            ),
          ),
          error: (error, stack) => Card(
            child: SizedBox.expand(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error_outline, size: 48, color: Colors.red[400]),
                    const SizedBox(height: 16),
                    Text(
                      'Error loading data',
                      style: TextStyle(fontSize: 16, color: Colors.red[600]),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      error.toString(),
                      style: TextStyle(fontSize: 14, color: Colors.red[500]),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
    }
  }

  // Helper method to combine multi-machine output data
  List<OutputTimeseries> _combineMultiMachineOutputData(
    List<OutputTimeseriesResponse> responses,
  ) {
    final List<OutputTimeseries> allSeries = [];
    for (final response in responses) {
      allSeries.addAll(response.series);
    }
    return allSeries;
  }

  // Helper method to combine multi-machine availability data
  List<AvailabilityTimeseries> _combineMultiMachineAvailabilityData(
    List<AvailabilityTimeseriesResponse> responses,
  ) {
    final List<AvailabilityTimeseries> allSeries = [];
    for (final response in responses) {
      allSeries.addAll(response.series);
    }
    return allSeries;
  }

  // Helper method to get machine names map for chart legend
  Map<String, String> _getMachineNamesMap(
    FilterState filterState,
    WidgetRef ref,
  ) {
    final Map<String, String> machineNamesMap = {};

    // Get machines from the current filter hierarchy
    final machinesAsync = filterState.unitId != null
        ? ref.watch(
            machinesByUnitProvider(
              filterState.unitId!,
              lineId: filterState.lineId,
            ),
          )
        : const AsyncValue.data(<Machine>[]);

    machinesAsync.whenData((machines) {
      for (final machine in machines) {
        machineNamesMap[machine.machineId] = machine.machineName;
      }
    });

    return machineNamesMap;
  }
}
