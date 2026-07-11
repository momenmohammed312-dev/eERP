import '../entities/setting_entity.dart';

abstract class SettingsRepository {
  Future<SettingEntity?> getByKey(String key);
  Future<List<SettingEntity>> getAll();
  Future<void> set(String key, String value);
  Future<void> delete(int id);
}
