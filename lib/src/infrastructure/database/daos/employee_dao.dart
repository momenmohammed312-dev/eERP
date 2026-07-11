import '../app_database.dart';

class EmployeeDao {
  final AppDatabase db;
  EmployeeDao(this.db);

  Future<int> insert(EmployeeCompanion data) =>
      db.into(db.employee).insert(data);

  Future<EmployeeData?> getById(int id) =>
      (db.select(db.employee)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<List<EmployeeData>> getAll() =>
      db.select(db.employee).get();

  Future<int> update(int id, EmployeeCompanion data) =>
      (db.update(db.employee)..where((t) => t.id.equals(id))).write(data);

  Future<int> delete(int id) =>
      (db.delete(db.employee)..where((t) => t.id.equals(id))).go();

  Future<Map<String, dynamic>?> getEmployeeWithPerson(int id) async {
    final employee = await (db.select(db.employee)
      ..where((t) => t.id.equals(id))
    ).getSingleOrNull();
    if (employee == null) return null;
    final person = await (db.select(db.person)
      ..where((t) => t.id.equals(employee.personId))
    ).getSingle();
    return {'employee': employee, 'person': person};
  }
}
