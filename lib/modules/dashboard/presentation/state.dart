import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../charts/core/chart_models.dart';
import '../../../core/result/result.dart';
import '../data/api_repository.dart';
import '../domain/models.dart';

final dashboardRepositoryProvider = Provider<DashboardRepository>(
  (ref) => createDashboardRepository(),
);

final kpisProvider = FutureProvider<List<KpiItem>>((ref) async {
  final res = await ref.watch(dashboardRepositoryProvider).fetchKpis();
  return res.isSuccess ? res.data : <KpiItem>[];
});

final plantsProvider = FutureProvider<List<String>>((ref) async {
  final res = await ref.watch(dashboardRepositoryProvider).fetchPlants();
  return res.isSuccess ? res.data : ['All'];
});
final segmentsProvider = FutureProvider<List<String>>((ref) async {
  final res = await ref.watch(dashboardRepositoryProvider).fetchSegments();
  return res.isSuccess ? res.data : ['All'];
});
final linesProvider = FutureProvider<List<String>>((ref) async {
  final res = await ref.watch(dashboardRepositoryProvider).fetchLines();
  return res.isSuccess ? res.data : ['All'];
});
final machinesProvider = FutureProvider<List<String>>((ref) async {
  final res = await ref.watch(dashboardRepositoryProvider).fetchMachines();
  return res.isSuccess ? res.data : ['All'];
});

final selectedKpiIdProvider = StateProvider<String>((ref) => 'kpi1');

final kpiFiltersProvider =
    StateNotifierProvider<KpiFiltersController, KpiFilters>((ref) {
      final now = DateTime.now();
      return KpiFiltersController(
        KpiFilters(
          dateRange: DateTimeRange(
            start: now.subtract(const Duration(days: 7)),
            end: now,
          ),
          plant: 'All',
          segment: 'All',
          line: 'All',
          machine: 'All',
        ),
      );
    });

class KpiFiltersController extends StateNotifier<KpiFilters> {
  KpiFiltersController(super.state);
  void updateDateRange(DateTimeRange range) =>
      state = state.copyWith(dateRange: range);
  void updatePlant(String v) => state = state.copyWith(plant: v);
  void updateSegment(String v) => state = state.copyWith(segment: v);
  void updateLine(String v) => state = state.copyWith(line: v);
  void updateMachine(String v) => state = state.copyWith(machine: v);
}

final kpiSeriesProvider = FutureProvider.autoDispose<Series>((ref) async {
  final repo = ref.watch(dashboardRepositoryProvider);
  final kpiId = ref.watch(selectedKpiIdProvider);
  final filters = ref.watch(kpiFiltersProvider);
  final res = await repo.fetchSeries(
    id: kpiId,
    plant: filters.plant,
    segment: filters.segment,
    line: filters.line,
    machine: filters.machine,
  );
  if (res.isSuccess) return res.data;
  throw Exception(res.failure.message);
});
