import 'package:dio/dio.dart';

import '../../../charts/core/chart_models.dart';
import '../../../core/network/api_client.dart';
import '../../../core/result/result.dart';
import '../domain/models.dart';

class DashboardRepository {
  DashboardRepository(this._client);
  final ApiClient _client;

  Future<Result<List<KpiItem>>> fetchKpis() async {
    try {
      final items = [for (int i = 1; i <= 11; i++) {'id': 'kpi$i', 'label': 'KPI$i'}];
      final data = items.map((m) => KpiItem(id: m['id'] as String, label: m['label'] as String)).toList();
      return Result.success(data);
    } catch (e, st) {
      return Result.failure('Failed to load KPIs', error: e, stackTrace: st);
    }
  }

  Future<Result<List<String>>> fetchPlants() async => _getList(
        path: '/plants',
        pickName: (m) => m['plant_name'] as String,
      );
  Future<Result<List<String>>> fetchSegments() async => _getList(
        path: '/segments',
        pickName: (m) => m['segment_name'] as String,
      );
  Future<Result<List<String>>> fetchLines() async => _getList(
        path: '/lines',
        pickName: (m) => m['line_name'] as String,
      );
  Future<Result<List<String>>> fetchMachines() async => _getList(
        path: '/machines',
        pickName: (m) => m['machine_name'] as String,
      );

  Future<Result<List<String>>> _getList({required String path, required String Function(Map m) pickName}) async {
    try {
      final res = await _client.dio.get(path);
      final list = (res.data as List).cast<Map>();
      final values = ['All', ...list.map(pickName)];
      return Result.success(values);
    } on DioException catch (e, st) {
      return Result.failure(e.message ?? 'Network error', statusCode: e.response?.statusCode, error: e, stackTrace: st);
    } catch (e, st) {
      return Result.failure('Unexpected error', error: e, stackTrace: st);
    }
  }

  Future<Result<Series>> fetchSeries({
    required String id,
    required String plant,
    required String segment,
    required String line,
    required String machine,
  }) async {
    try {
      // Replace with live endpoint when available
      final times = ['10am','11am','12am','01am','02am','03am','04am','05am','06am','07am'];
      final base = id.hashCode % 7 + 3 + plant.length % 2 + segment.length % 2 + line.length % 2 + machine.length % 2;
      final series = Series(
        name: id.toUpperCase(),
        data: [for (int i = 0; i < times.length; i++) DataPoint(x: times[i], y: base + (((i + segment.length + line.length) * 1.2) % 6))],
      );
      return Result.success(series);
    } catch (e, st) {
      return Result.failure('Failed to load series', error: e, stackTrace: st);
    }
  }
}

DashboardRepository createDashboardRepository() => DashboardRepository(ApiClient.create());
