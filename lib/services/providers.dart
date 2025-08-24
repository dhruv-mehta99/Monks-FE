import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'api_service.dart';
import '../models/machine_hierarchy.dart';
import '../models/kpi_data.dart';
import '../models/filter_state.dart';

part 'providers.g.dart';

// API Service Provider
@riverpod
ApiService apiService(ApiServiceRef ref) {
  return ApiService();
}

// Machine Hierarchy Providers
@riverpod
Future<MachineHierarchy> machineHierarchy(MachineHierarchyRef ref) async {
  final apiService = ref.read(apiServiceProvider);
  return await apiService.getMachineHierarchy();
}

@riverpod
Future<List<Plant>> plants(PlantsRef ref) async {
  final apiService = ref.read(apiServiceProvider);
  return await apiService.getPlants();
}

@riverpod
Future<List<Unit>> unitsByPlant(UnitsByPlantRef ref, String plantId) async {
  final apiService = ref.read(apiServiceProvider);
  return await apiService.getUnitsByPlant(plantId);
}

@riverpod
Future<List<Segment>> segmentsByUnit(SegmentsByUnitRef ref, String unitId) async {
  final apiService = ref.read(apiServiceProvider);
  return await apiService.getSegmentsByUnit(unitId);
}

@riverpod
Future<List<Line>> linesBySegment(LinesBySegmentRef ref, String segmentId) async {
  final apiService = ref.read(apiServiceProvider);
  return await apiService.getLinesBySegment(segmentId);
}

@riverpod
Future<List<Machine>> machinesByLine(MachinesByLineRef ref, String lineId) async {
  final apiService = ref.read(apiServiceProvider);
  return await apiService.getMachinesByLine(lineId);
}

// Filter State Provider
@riverpod
class FilterNotifier extends _$FilterNotifier {
  @override
  FilterState build() {
    return FilterState.initial();
  }

  void updatePlant(String? plantId) {
    state = state.copyWith(
      plantId: plantId,
      unitId: null,
      segmentId: null,
      lineId: null,
      machineId: null,
    );
  }

  void updateUnit(String? unitId) {
    state = state.copyWith(
      unitId: unitId,
      segmentId: null,
      lineId: null,
      machineId: null,
    );
  }

  void updateSegment(String? segmentId) {
    state = state.copyWith(
      segmentId: segmentId,
      lineId: null,
      machineId: null,
    );
  }

  void updateLine(String? lineId) {
    state = state.copyWith(
      lineId: lineId,
      machineId: null,
    );
  }

  void updateMachine(String? machineId) {
    state = state.copyWith(machineId: machineId);
  }

  void updateDateRange(DateTimeRange dateRange) {
    state = state.copyWith(dateRange: dateRange);
  }

  void updateShift(String? shiftId) {
    state = state.copyWith(shiftId: shiftId);
  }

  void updateOperator(String? operatorId) {
    state = state.copyWith(operatorId: operatorId);
  }

  void updateProduct(String? productId) {
    state = state.copyWith(productId: productId);
  }

  void resetFilters() {
    state = FilterState.initial();
  }
}

// KPI Data Providers
@riverpod
Future<OutputTimeseriesResponse> outputTimeseries(
    OutputTimeseriesRef ref, FilterState filters) async {
  final apiService = ref.read(apiServiceProvider);
  return await apiService.getOutputTimeseries(filters);
}

@riverpod
Future<PerformanceTimeseriesResponse> performanceTimeseries(
    PerformanceTimeseriesRef ref, FilterState filters) async {
  final apiService = ref.read(apiServiceProvider);
  return await apiService.getPerformanceTimeseries(filters);
}

@riverpod
Future<OutputAggregateResponse> outputAggregate(
    OutputAggregateRef ref, FilterState filters) async {
  final apiService = ref.read(apiServiceProvider);
  return await apiService.getOutputAggregate(filters);
}

@riverpod
Future<PerformanceAggregateResponse> performanceAggregate(
    PerformanceAggregateRef ref, FilterState filters) async {
  final apiService = ref.read(apiServiceProvider);
  return await apiService.getPerformanceAggregate(filters);
}
