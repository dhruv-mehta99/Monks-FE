import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/shared_widgets/shared_widgets.dart';
import '../../models/models.dart';
import '../../services/services.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  List<String> selectedMachineIds = [];
  DateTimeRange comparisonRange = DateTimeRange(
    start: DateTime.now().subtract(const Duration(days: 7)),
    end: DateTime.now(),
  );

  @override
  Widget build(BuildContext context) {
    final plantsAsync = ref.watch(plantsProvider);

    final outputComparisonAsync = selectedMachineIds.isNotEmpty
        ? ref.watch(
            outputTimeseriesProvider(
              FilterState(
                machineId: selectedMachineIds.first,
                dateRange: comparisonRange,
              ),
            ),
          )
        : const AsyncValue.data(null);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Machine Comparison Dashboard',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 24),

            // Machine Selection Section
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Machines for Comparison',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 16),
                    plantsAsync.when(
                      data: _buildMachineSelection,
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      error: (error, stack) =>
                          Center(child: Text('Error: $error')),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Time Range Selection
            TimeRangeFilter(
              currentRange: comparisonRange,
              onRangeChanged: (newRange) {
                setState(() {
                  comparisonRange = newRange;
                });
              },
            ),

            const SizedBox(height: 24),

            // Comparison Results
            if (selectedMachineIds.isNotEmpty) ...[
              Expanded(
                child: outputComparisonAsync.when(
                  data: _buildComparisonResults,
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error_outline,
                          size: 48,
                          color: Colors.red[400],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Error loading comparison data',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.red[600],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          error.toString(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red[500],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ] else ...[
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.compare_arrows,
                        size: 64,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Select machines to compare',
                        style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Choose multiple machines from the selection above to view comparison data',
                        style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildMachineSelection(List<Plant> plants) => Column(
    children: plants
        .map(
          (plant) => ExpansionTile(
            title: Text(plant.plantName),
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  bottom: 16.0,
                ),
                child: FutureBuilder<List<Unit>>(
                  future: ref
                      .read(apiServiceProvider)
                      .getUnitsByPlant(plant.plantId),
                  builder: (context, unitsSnapshot) {
                    if (!unitsSnapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    return Column(
                      children: unitsSnapshot.data!
                          .map(
                            (unit) => ExpansionTile(
                              title: Text(unit.unitName),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16.0,
                                    right: 16.0,
                                    bottom: 16.0,
                                  ),
                                  child: FutureBuilder<List<Segment>>(
                                    future: ref
                                        .read(apiServiceProvider)
                                        .getSegmentsByUnit(unit.unitId),
                                    builder: (context, segmentsSnapshot) {
                                      if (!segmentsSnapshot.hasData) {
                                        return const Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      }

                                      return Column(
                                        children: segmentsSnapshot.data!
                                            .map(
                                              (segment) => ExpansionTile(
                                                title: Text(
                                                  segment.segmentName,
                                                ),
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                          left: 16.0,
                                                          right: 16.0,
                                                          bottom: 16.0,
                                                        ),
                                                    child: FutureBuilder<List<Line>>(
                                                      future: ref
                                                          .read(
                                                            apiServiceProvider,
                                                          )
                                                          .getLinesBySegment(
                                                            segment.segmentId,
                                                          ),
                                                      builder: (context, linesSnapshot) {
                                                        if (!linesSnapshot
                                                            .hasData) {
                                                          return const Center(
                                                            child:
                                                                CircularProgressIndicator(),
                                                          );
                                                        }

                                                        return Column(
                                                          children: linesSnapshot
                                                              .data!
                                                              .map(
                                                                (
                                                                  line,
                                                                ) => ExpansionTile(
                                                                  title: Text(
                                                                    line.lineName,
                                                                  ),
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets.only(
                                                                        left:
                                                                            16.0,
                                                                        right:
                                                                            16.0,
                                                                        bottom:
                                                                            16.0,
                                                                      ),
                                                                      child:
                                                                          FutureBuilder<
                                                                            List<
                                                                              Machine
                                                                            >
                                                                          >(
                                                                            future: ref
                                                                                .read(
                                                                                  apiServiceProvider,
                                                                                )
                                                                                .getMachinesByLine(
                                                                                  line.lineId,
                                                                                ),
                                                                            builder:
                                                                                (
                                                                                  context,
                                                                                  machinesSnapshot,
                                                                                ) {
                                                                                  if (!machinesSnapshot.hasData) {
                                                                                    return const Center(
                                                                                      child: CircularProgressIndicator(),
                                                                                    );
                                                                                  }

                                                                                  return Column(
                                                                                    children: machinesSnapshot.data!.map(
                                                                                      (
                                                                                        machine,
                                                                                      ) {
                                                                                        final isSelected = selectedMachineIds.contains(
                                                                                          machine.machineId,
                                                                                        );
                                                                                        return CheckboxListTile(
                                                                                          title: Text(
                                                                                            machine.machineName,
                                                                                          ),
                                                                                          subtitle: Text(
                                                                                            'Status: ${machine.status.name}',
                                                                                          ),
                                                                                          value: isSelected,
                                                                                          onChanged:
                                                                                              (
                                                                                                selected,
                                                                                              ) {
                                                                                                setState(
                                                                                                  () {
                                                                                                    if (selected ==
                                                                                                        true) {
                                                                                                      selectedMachineIds.add(
                                                                                                        machine.machineId,
                                                                                                      );
                                                                                                    } else {
                                                                                                      selectedMachineIds.remove(
                                                                                                        machine.machineId,
                                                                                                      );
                                                                                                    }
                                                                                                  },
                                                                                                );
                                                                                              },
                                                                                        );
                                                                                      },
                                                                                    ).toList(),
                                                                                  );
                                                                                },
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                              .toList(),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                            .toList(),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    );
                  },
                ),
              ),
            ],
          ),
        )
        .toList(),
  );

  Widget _buildComparisonResults(OutputTimeseriesResponse? data) {
    if (data == null || data.series.isEmpty) {
      return const Center(child: Text('No comparison data available'));
    }

    return Column(
      children: [
        // Summary Cards
        KpiSummaryGrid(
          cards: _buildComparisonSummaryCards(data),
          crossAxisCount: 3,
          childAspectRatio: 2.0,
        ),

        const SizedBox(height: 24),

        // Comparison Chart
        Expanded(
          child: KpiLineChart(
            title: 'Machine Output Comparison',
            data: data.series,
            yAxisLabel: 'Output',
            showLegend: true,
            colors: const [
              Color(0xFF2196F3), // Blue
              Color(0xFF4CAF50), // Green
              Color(0xFFFF9800), // Orange
              Color(0xFF9C27B0), // Purple
              Color(0xFFF44336), // Red
              Color(0xFF00BCD4), // Cyan
              Color(0xFFFFEB3B), // Yellow
              Color(0xFF795548), // Brown
            ],
            machineNames: _getMachineNamesMap(ref),
          ),
        ),

        const SizedBox(height: 24),

        // Comparison Table
        KpiDataTable(
          data: data.series,
          title: 'Comparison Data',
          showPagination: true,
          rowsPerPage: 10,
        ),
      ],
    );
  }

  List<KpiSummaryCard> _buildComparisonSummaryCards(
    OutputTimeseriesResponse data,
  ) {
    final cards = <KpiSummaryCard>[];

    // Calculate comparison statistics
    double totalOutput = 0;
    double maxOutput = 0;
    double minOutput = double.infinity;

    for (final series in data.series) {
      double seriesTotal = 0;
      for (final point in series.data) {
        seriesTotal += point.chartValue;
        if (point.chartValue > maxOutput) maxOutput = point.chartValue;
        if (point.chartValue < minOutput) minOutput = point.chartValue;
      }
      totalOutput += seriesTotal;
    }

    final avgOutput = data.series.isNotEmpty
        ? totalOutput / data.series.length
        : 0;

    cards.addAll([
      KpiSummaryCard(
        title: 'Total Output (All Machines)',
        value: totalOutput.toStringAsFixed(0),
        unit: 'units',
        icon: Icons.production_quantity_limits,
        color: Colors.blue,
      ),
      KpiSummaryCard(
        title: 'Average Output per Machine',
        value: avgOutput.toStringAsFixed(1),
        unit: 'units',
        icon: Icons.analytics,
        color: Colors.green,
      ),
      KpiSummaryCard(
        title: 'Peak Output',
        value: maxOutput.toStringAsFixed(0),
        unit: 'units',
        icon: Icons.trending_up,
        color: Colors.orange,
      ),
    ]);

    return cards;
  }

  // Helper method to get machine names map for chart legend
  Map<String, String> _getMachineNamesMap(WidgetRef ref) {
    final Map<String, String> machineNamesMap = {};

    // Get machines from the current unit if available
    if (selectedMachineIds.isNotEmpty) {
      // For now, we'll use a simple approach - you might want to enhance this
      // to get actual machine names from the API
      for (final machineId in selectedMachineIds) {
        machineNamesMap[machineId] = 'Machine $machineId';
      }
    }

    return machineNamesMap;
  }
}
