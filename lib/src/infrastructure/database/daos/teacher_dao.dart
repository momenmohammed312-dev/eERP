import '../app_database.dart';

class TeacherDao {
  final AppDatabase db;
  TeacherDao(this.db);

  Future<int> insert(TeacherCompanion data) =>
      db.into(db.teacher).insert(data);

  Future<TeacherData?> getById(int id) =>
      (db.select(db.teacher)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<List<TeacherData>> getAll() =>
      db.select(db.teacher).get();

  Future<int> update(int id, TeacherCompanion data) =>
      (db.update(db.teacher)..where((t) => t.id.equals(id))).write(data);

  Future<int> delete(int id) =>
      (db.delete(db.teacher)..where((t) => t.id.equals(id))).go();

  Future<Map<String, dynamic>?> getTeacherWithPerson(int id) async {
    final teacher = await (db.select(db.teacher)
      ..where((t) => t.id.equals(id))
    ).getSingleOrNull();
    if (teacher == null) return null;
    final person = await (db.select(db.person)
      ..where((t) => t.id.equals(teacher.personId))
    ).getSingle();
    return {'teacher': teacher, 'person': person};
  }
}
