import 'package:drift/drift.dart';
import '../app_database.dart';

class RoleDao {
  final AppDatabase db;
  RoleDao(this.db);

  Future<int> insert(RoleCompanion data) =>
      db.into(db.role).insert(data);

  Future<RoleData?> getById(int id) =>
      (db.select(db.role)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<List<RoleData>> getAll() =>
      db.select(db.role).get();

  Future<int> update(int id, RoleCompanion data) =>
      (db.update(db.role)..where((t) => t.id.equals(id))).write(data);

  Future<int> delete(int id) =>
      (db.delete(db.role)..where((t) => t.id.equals(id))).go();

  Future<List<PermissionData>> getPermissionsForRole(int roleId) async {
    final rows = await (db.select(db.rolePermission)
      ..where((t) => t.roleId.equals(roleId))
    ).get();
    final ids = rows.map((r) => r.permissionId).toList();
    if (ids.isEmpty) return [];
    return (db.select(db.permission)
      ..where((t) => t.id.isIn(ids))
    ).get();
  }

  Future<void> assignPermission(int roleId, int permissionId) =>
      db.into(db.rolePermission).insert(
        RolePermissionCompanion.insert(roleId: roleId, permissionId: permissionId),
      );

  Future<int> removePermission(int roleId, int permissionId) =>
      (db.delete(db.rolePermission)
            ..where((t) =>
                t.roleId.equals(roleId) & t.permissionId.equals(permissionId)))
          .go();
}
