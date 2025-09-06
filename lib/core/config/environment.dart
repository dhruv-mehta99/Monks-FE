import 'package:envied/envied.dart';

part 'environment.g.dart';

@Envied(path: '.env')
abstract class Environment {
  @EnviedField(varName: 'ENVIRONMENT', defaultValue: 'local')
  static const String environment = _Environment.environment;

  @EnviedField(varName: 'API_BASE_URL', defaultValue: 'http://localhost:8080')
  static const String apiBaseUrl = _Environment.apiBaseUrl;
}

class EnvironmentConfig {
  static String get apiBaseUrl {
    switch (Environment.environment.toLowerCase()) {
      case 'local':
        return 'http://localhost:8080';
      case 'staging':
        return 'https://monks-be-production.up.railway.app';
      case 'prod':
        return 'https://api.monks-production.com'; // Dummy production URL
      default:
        return 'http://localhost:8080';
    }
  }

  static bool get isLocal => Environment.environment.toLowerCase() == 'local';
  static bool get isStaging =>
      Environment.environment.toLowerCase() == 'staging';
  static bool get isProduction =>
      Environment.environment.toLowerCase() == 'prod';
}
