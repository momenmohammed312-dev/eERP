import '../imports/core_imports.dart';

class AppConfig {
  AppConfig._();

  static Future<void> init() async {
    AppLogger.info('AppConfig initialized (local-only mode)');
  }
}
