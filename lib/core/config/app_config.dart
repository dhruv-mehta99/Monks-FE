import 'environment.dart';

class AppConfig {
  static String get apiBaseUrl => EnvironmentConfig.apiBaseUrl;

  static bool get isLocal => EnvironmentConfig.isLocal;
  static bool get isStaging => EnvironmentConfig.isStaging;
  static bool get isProduction => EnvironmentConfig.isProduction;
}
