import '../app_database.dart';

class SettingsDao {
  final AppDatabase db;
  SettingsDao(this.db);

  Future<int> insert(SettingCompanion data) =>
      db.into(db.setting).insert(data);

  Future<SettingData?> getByKey(String key) =>
      (db.select(db.setting)..where((t) => t.key.equals(key)))
          .getSingleOrNull();

  Future<List<SettingData>> getAll() => db.select(db.setting).get();

  Future<int> updateByKey(String key, SettingCompanion data) =>
      (db.update(db.setting)..where((t) => t.key.equals(key))).write(data);

  Future<int> delete(int id) =>
      (db.delete(db.setting)..where((t) => t.id.equals(id))).go();
}
