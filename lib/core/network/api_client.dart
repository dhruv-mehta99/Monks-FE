import 'package:dio/dio.dart';

import '../config/app_config.dart';

class ApiClient {
  ApiClient._(this.dio);
  final Dio dio;

  static ApiClient create() {
    final dio = Dio(BaseOptions(
      baseUrl: AppConfig.apiBaseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 20),
    ));
    dio.interceptors.add(LogInterceptor(responseBody: false));
    return ApiClient._(dio);
  }
}
