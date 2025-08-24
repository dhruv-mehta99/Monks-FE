import 'package:dio/dio.dart';
import '../models/machine_hierarchy.dart';
import '../models/kpi_data.dart';
import '../models/filter_state.dart';

class ApiService {
  final Dio _dio;

  ApiService({String? baseUrl})
      : _dio = Dio(BaseOptions(
          baseUrl: baseUrl ?? 'http://localhost:3000',
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        ));

  // Machine Hierarchy
  Future<MachineHierarchy> getMachineHierarchy() async {
    try {
      final response = await _dio.get('/plants');
      return MachineHierarchy.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<List<Plant>> getPlants() async {
    try {
      final response = await _dio.get('/plants');
      return (response.data as List)
          .map((json) => Plant.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<List<Unit>> getUnitsByPlant(String plantId) async {
    try {
      final response = await _dio.get('/units/plant/$plantId');
      return (response.data as List)
          .map((json) => Unit.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<List<Segment>> getSegmentsByUnit(String unitId) async {
    try {
      final response = await _dio.get('/segments/unit/$unitId');
      return (response.data as List)
          .map((json) => Segment.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<List<Line>> getLinesBySegment(String segmentId) async {
    try {
      final response = await _dio.get('/lines/segment/$segmentId');
      return (response.data as List)
          .map((json) => Line.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<List<Machine>> getMachinesByLine(String lineId) async {
    try {
      final response = await _dio.get('/machines/line/$lineId');
      return (response.data as List)
          .map((json) => Machine.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  // KPI Data
  Future<OutputTimeseriesResponse> getOutputTimeseries(FilterState filters) async {
    try {
      final queryParams = _buildQueryParams(filters);
      final response = await _dio.get(
        '/api/v1/processed/output/timeseries',
        queryParameters: queryParams,
      );
      return OutputTimeseriesResponse.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<PerformanceTimeseriesResponse> getPerformanceTimeseries(
      FilterState filters) async {
    try {
      final queryParams = _buildQueryParams(filters);
      final response = await _dio.get(
        '/api/v1/processed/performance/timeseries',
        queryParameters: queryParams,
      );
      return PerformanceTimeseriesResponse.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<OutputAggregateResponse> getOutputAggregate(FilterState filters) async {
    try {
      final queryParams = _buildQueryParams(filters);
      final response = await _dio.get(
        '/api/v1/processed/output/aggregate',
        queryParameters: queryParams,
      );
      return OutputAggregateResponse.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<PerformanceAggregateResponse> getPerformanceAggregate(
      FilterState filters) async {
    try {
      final queryParams = _buildQueryParams(filters);
      final response = await _dio.get(
        '/api/v1/processed/performance/aggregate',
        queryParameters: queryParams,
      );
      return PerformanceAggregateResponse.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Helper methods
  Map<String, dynamic> _buildQueryParams(FilterState filters) {
    final params = <String, dynamic>{
      'startTime': filters.dateRange.start.toIso8601String(),
      'endTime': filters.dateRange.end.toIso8601String(),
      'interval': '30m', // Default interval
    };

    if (filters.machineId != null) {
      params['machineIds'] = filters.machineId;
    }

    if (filters.shiftId != null) {
      params['shiftId'] = filters.shiftId;
    }

    if (filters.operatorId != null) {
      params['operatorId'] = filters.operatorId;
    }

    if (filters.productId != null) {
      params['productId'] = filters.productId;
    }

    return params;
  }

  Exception _handleError(dynamic error) {
    if (error is DioException) {
      return Exception('API Error: ${error.message}');
    }
    return Exception('Unexpected error: $error');
  }
}
