import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/filter_state.dart';
import '../models/kpi_data.dart';
import '../models/machine_hierarchy.dart';
import 'api_service.dart';

part 'providers.g.dart';

// API Service Provider
@riverpod
ApiService apiService(ApiServiceRef ref) => ApiService();

// Plants Provider
@riverpod
Future<List<Plant>> plants(PlantsRef ref) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    final plants = await apiService.getPlants();
    print('DEBUG: Plants provider returned ${plants.length} plants');
    for (final plant in plants) {
      print('DEBUG: Plant - ID: ${plant.plantId}, Name: ${plant.plantName}');
    }
    return plants;
  } catch (e) {
    print('DEBUG: Plants provider error: $e');
    rethrow;
  }
}

@riverpod
Future<List<Unit>> unitsByPlant(UnitsByPlantRef ref, String plantId) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getUnitsByPlant(plantId);
}

// Segments by Unit Provider
@riverpod
Future<List<Segment>> segmentsByUnit(
  SegmentsByUnitRef ref,
  String unitId,
) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    final segments = await apiService.getSegmentsByUnit(unitId);
    return segments;
  } catch (e) {
    print('DEBUG: Segments provider error: $e');
    rethrow;
  }
}

@riverpod
Future<List<Line>> linesBySegment(
  LinesBySegmentRef ref,
  String segmentId,
) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getLinesBySegment(segmentId);
}

@riverpod
Future<List<Machine>> machinesByLine(
  MachinesByLineRef ref,
  String lineId,
) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getMachinesByLine(lineId);
}

// New: Machines by Unit Provider
@riverpod
Future<List<Machine>> machinesByUnit(
  MachinesByUnitRef ref,
  String unitId, {
  String? lineId,
}) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getMachinesByUnit(unitId, lineId: lineId);
}

// Additional Filter Options Providers
@riverpod
Future<List<Map<String, dynamic>>> shifts(ShiftsRef ref) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getShifts();
}

@riverpod
Future<List<Map<String, dynamic>>> operators(OperatorsRef ref) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getOperators();
}

@riverpod
Future<List<Map<String, dynamic>>> products(ProductsRef ref) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getProducts();
}

// Filter State Provider
@riverpod
class FilterNotifier extends _$FilterNotifier {
  @override
  FilterState build() => FilterState.initial();

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
    state = state.copyWith(segmentId: segmentId, lineId: null, machineId: null);
  }

  void updateLine(String? lineId) {
    state = state.copyWith(lineId: lineId, machineId: null);
  }

  void updateMachine(String? machineId) {
    state = state.copyWith(machineId: machineId);
  }

  void updateDateRange(DateTimeRange dateRange) {
    state = state.copyWith(dateRange: dateRange);
  }

  // void updateShift(String? shiftId) {
  //   state = state.copyWith(shiftId: shiftId);
  // }

  // void updateOperator(String? operatorId) {
  //   state = state.copyWith(operatorId: operatorId);
  // }

  // void updateProduct(String? productId) {
  //   state = state.copyWith(productId: productId);
  // }

  void updateFilters(FilterState newFilters) {
    state = newFilters;
  }

  void resetFilters() {
    state = FilterState.initial();
  }
}

// KPI Data Providers
@riverpod
Future<OutputTimeseriesResponse> outputTimeseries(
  OutputTimeseriesRef ref,
  FilterState filters,
) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getOutputTimeseries(filters);
}

@riverpod
Future<PerformanceTimeseriesResponse> performanceTimeseries(
  PerformanceTimeseriesRef ref,
  FilterState filters,
) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getPerformanceTimeseries(filters);
}

@riverpod
Future<OutputAggregateResponse> outputAggregate(
  OutputAggregateRef ref,
  FilterState filters,
) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getOutputAggregate(filters);
}

@riverpod
Future<PerformanceAggregateResponse> performanceAggregate(
  PerformanceAggregateRef ref,
  FilterState filters,
) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getPerformanceAggregate(filters);
}

// Machine Availability KPI Providers
@riverpod
Future<AvailabilityTimeseriesResponse> availabilityTimeseries(
  AvailabilityTimeseriesRef ref,
  FilterState filters,
) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getAvailabilityTimeseries(filters);
}

@riverpod
Future<AvailabilityAggregateResponse> availabilityAggregate(
  AvailabilityAggregateRef ref,
  FilterState filters,
) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.getAvailabilityAggregate(filters);
}
