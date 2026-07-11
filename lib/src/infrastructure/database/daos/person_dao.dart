import '../app_database.dart';

class PersonDao {
  final AppDatabase db;
  PersonDao(this.db);

  Future<int> insert(PersonCompanion data) =>
      db.into(db.person).insert(data);

  Future<PersonData?> getById(int id) =>
      (db.select(db.person)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<List<PersonData>> getAll() =>
      db.select(db.person).get();

  Future<int> update(int id, PersonCompanion data) =>
      (db.update(db.person)..where((t) => t.id.equals(id))).write(data);

  Future<int> delete(int id) =>
      (db.delete(db.person)..where((t) => t.id.equals(id))).go();
}
