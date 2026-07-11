import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/settings/entities/setting_entity.dart';
import 'package:edu_erp/src/domain/settings/repositories/settings_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/settings_dao.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsDao _dao;
  SettingsRepositoryImpl(this._dao);

  SettingEntity _toEntity(db.SettingData d) => SettingEntity(
        id: d.id,
        key: d.key,
        value: d.value,
        description: d.description,
      );

  @override
  Future<SettingEntity?> getByKey(String key) async {
    final data = await _dao.getByKey(key);
    return data != null ? _toEntity(data) : null;
  }

  @override
  Future<List<SettingEntity>> getAll() async =>
      (await _dao.getAll()).map(_toEntity).toList();

  @override
  Future<void> set(String key, String value) async {
    final existing = await _dao.getByKey(key);
    if (existing != null) {
      await _dao.updateByKey(
        key,
        db.SettingCompanion(value: Value(value)),
      );
    } else {
      await _dao.insert(
        db.SettingCompanion.insert(key: key, value: value),
      );
    }
  }

  @override
  Future<void> delete(int id) => _dao.delete(id);
}
