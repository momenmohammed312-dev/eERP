import '../app_database.dart';

class UserAccountDao {
  final AppDatabase db;
  UserAccountDao(this.db);

  Future<int> insert(UserAccountCompanion data) =>
      db.into(db.userAccount).insert(data);

  Future<UserAccountData?> getById(int id) =>
      (db.select(db.userAccount)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<List<UserAccountData>> getAll() =>
      db.select(db.userAccount).get();

  Future<int> update(int id, UserAccountCompanion data) =>
      (db.update(db.userAccount)..where((t) => t.id.equals(id))).write(data);

  Future<int> delete(int id) =>
      (db.delete(db.userAccount)..where((t) => t.id.equals(id))).go();

  Future<Map<String, dynamic>?> getByUsername(String username) async {
    final user = await (db.select(db.userAccount)
      ..where((t) => t.username.equals(username))
    ).getSingleOrNull();
    if (user == null) return null;
    final results = await Future.wait([
      (db.select(db.person)..where((t) => t.id.equals(user.personId)))
          .getSingle(),
      (db.select(db.role)..where((t) => t.id.equals(user.roleId)))
          .getSingle(),
    ]);
    return {
      'userAccount': user,
      'person': results[0],
      'role': results[1],
    };
  }
}
