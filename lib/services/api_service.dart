import 'package:dio/dio.dart';

import '../core/config/app_config.dart';
import '../models/filter_state.dart';
import '../models/kpi_data.dart';
import '../models/machine_hierarchy.dart';

class ApiService {
  final Dio _dio;

  ApiService({String? baseUrl})
    : _dio = Dio(
        BaseOptions(
          baseUrl: baseUrl ?? AppConfig.apiBaseUrl,
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        ),
      );

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

  // Updated: /plants/:plantId/units
  Future<List<Unit>> getUnitsByPlant(String plantId) async {
    try {
      final response = await _dio.get('/plants/$plantId/units');
      return (response.data as List)
          .map((json) => Unit.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Updated: /units/:unitId/segments
  Future<List<Segment>> getSegmentsByUnit(String unitId) async {
    try {
      final response = await _dio.get('/units/$unitId/segments');
      return (response.data as List)
          .map((json) => Segment.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Updated: /segments/:segmentId/lines
  Future<List<Line>> getLinesBySegment(String segmentId) async {
    try {
      final response = await _dio.get('/segments/$segmentId/lines');
      return (response.data as List)
          .map((json) => Line.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Updated: /units/:unitId/machines (with optional lineId filter)
  Future<List<Machine>> getMachinesByUnit(
    String unitId, {
    String? lineId,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (lineId != null) {
        queryParams['lineId'] = lineId;
      }

      final response = await _dio.get(
        '/units/$unitId/machines',
        queryParameters: queryParams.isNotEmpty ? queryParams : null,
      );
      return (response.data as List)
          .map((json) => Machine.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Legacy method for backward compatibility (deprecated)
  @Deprecated('Use getMachinesByUnit instead')
  Future<List<Machine>> getMachinesByLine(String lineId) async {
    // This method is deprecated, but we'll keep it for now
    // In a real app, you might want to remove this
    try {
      // Try to find the unit that contains this line, then get machines
      // This is a workaround until all code is updated
      final response = await _dio.get('/machines/lines/$lineId/machines');
      return (response.data as List)
          .map((json) => Machine.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Additional Filter Options
  Future<List<Map<String, dynamic>>> getShifts() async {
    try {
      final response = await _dio.get('/shifts');
      return (response.data as List).cast<Map<String, dynamic>>();
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<List<Map<String, dynamic>>> getOperators() async {
    try {
      final response = await _dio.get('/operators');
      return (response.data as List).cast<Map<String, dynamic>>();
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<List<Map<String, dynamic>>> getProducts() async {
    try {
      final response = await _dio.get('/products');
      return (response.data as List).cast<Map<String, dynamic>>();
    } catch (e) {
      throw _handleError(e);
    }
  }

  // KPI Data
  Future<OutputTimeseriesResponse> getOutputTimeseries(
    FilterState filters,
  ) async {
    try {
      final response = await _dio.get(
        '/api/v1/processed/output/timeseries',
        queryParameters: _buildQueryParams(filters),
      );
      return OutputTimeseriesResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<PerformanceTimeseriesResponse> getPerformanceTimeseries(
    FilterState filters,
  ) async {
    try {
      final response = await _dio.get(
        '/api/v1/processed/performance/timeseries',
        queryParameters: _buildQueryParams(filters),
      );
      return PerformanceTimeseriesResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<OutputAggregateResponse> getOutputAggregate(
    FilterState filters,
  ) async {
    try {
      final response = await _dio.get(
        '/api/v1/processed/output/aggregate',
        queryParameters: _buildQueryParams(filters),
      );
      return OutputAggregateResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<PerformanceAggregateResponse> getPerformanceAggregate(
    FilterState filters,
  ) async {
    try {
      final response = await _dio.get(
        '/api/v1/processed/performance/aggregate',
        queryParameters: _buildQueryParams(filters),
      );
      return PerformanceAggregateResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Machine Availability KPI
  Future<AvailabilityTimeseriesResponse> getAvailabilityTimeseries(
    FilterState filters,
  ) async {
    try {
      final response = await _dio.get(
        '/api/v1/processed/availability/timeseries',
        queryParameters: _buildQueryParams(filters),
      );
      return AvailabilityTimeseriesResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<AvailabilityAggregateResponse> getAvailabilityAggregate(
    FilterState filters,
  ) async {
    try {
      final response = await _dio.get(
        '/api/v1/processed/availability/aggregate',
        queryParameters: _buildQueryParams(filters),
      );
      return AvailabilityAggregateResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Helper methods
  Map<String, dynamic> _buildQueryParams(FilterState filters) {
    final params = <String, dynamic>{
      'startTime': filters.dateRange.start.toIso8601String(),
      'endTime': filters.dateRange.end.toIso8601String(),
      'interval': '30m', // Default interval as per API docs
    };

    if (filters.machineId != null) {
      params['machineIds'] = filters.machineId;
    }

    // Note: shiftId, operatorId, and productId are currently commented out in FilterState
    // Uncomment these when the properties are added back to FilterState
    // if (filters.shiftId != null) {
    //   params['shiftId'] = filters.shiftId;
    // }

    // if (filters.operatorId != null) {
    //   params['operatorId'] = filters.operatorId;
    // }

    // if (filters.productId != null) {
    //   params['productId'] = filters.productId;
    // }

    return params;
  }

  Exception _handleError(dynamic error) {
    if (error is DioException) {
      return Exception('API Error: ${error.message}');
    }
    return Exception('Unexpected error: $error');
  }
}
