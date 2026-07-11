import '../app_database.dart';

class GuardianDao {
  final AppDatabase db;
  GuardianDao(this.db);

  Future<int> insert(GuardianCompanion data) =>
      db.into(db.guardian).insert(data);

  Future<GuardianData?> getById(int id) =>
      (db.select(db.guardian)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<List<GuardianData>> getAll() =>
      db.select(db.guardian).get();

  Future<int> update(int id, GuardianCompanion data) =>
      (db.update(db.guardian)..where((t) => t.id.equals(id))).write(data);

  Future<int> delete(int id) =>
      (db.delete(db.guardian)..where((t) => t.id.equals(id))).go();

  Future<Map<String, dynamic>?> getGuardianWithPerson(int id) async {
    final guardian = await (db.select(db.guardian)
      ..where((t) => t.id.equals(id))
    ).getSingleOrNull();
    if (guardian == null) return null;
    final person = await (db.select(db.person)
      ..where((t) => t.id.equals(guardian.personId))
    ).getSingle();
    return {'guardian': guardian, 'person': person};
  }
}
