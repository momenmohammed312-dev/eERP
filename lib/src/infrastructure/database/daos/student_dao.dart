import '../app_database.dart';

class StudentDao {
  final AppDatabase db;
  StudentDao(this.db);

  Future<int> insert(StudentCompanion data) =>
      db.into(db.student).insert(data);

  Future<StudentData?> getById(int id) =>
      (db.select(db.student)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<List<StudentData>> getAll() =>
      db.select(db.student).get();

  Future<int> update(int id, StudentCompanion data) =>
      (db.update(db.student)..where((t) => t.id.equals(id))).write(data);

  Future<int> delete(int id) =>
      (db.delete(db.student)..where((t) => t.id.equals(id))).go();

  Future<Map<String, dynamic>?> getStudentWithPerson(int id) async {
    final student = await (db.select(db.student)
      ..where((t) => t.id.equals(id))
    ).getSingleOrNull();
    if (student == null) return null;
    final person = await (db.select(db.person)
      ..where((t) => t.id.equals(student.personId))
    ).getSingle();
    return {'student': student, 'person': person};
  }
}
