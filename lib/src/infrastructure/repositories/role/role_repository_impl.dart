import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/role/entities/role_entity.dart';
import 'package:edu_erp/src/domain/role/entities/permission_entity.dart';
import 'package:edu_erp/src/domain/role/repositories/role_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/role_dao.dart';

class RoleRepositoryImpl implements RoleRepository {
  final RoleDao _dao;
  RoleRepositoryImpl(this._dao);

  RoleEntity _toEntity(db.RoleData d) =>
      RoleEntity(id: d.id, name: d.name);

  PermissionEntity _permToEntity(db.PermissionData d) =>
      PermissionEntity(id: d.id, name: d.name);

  @override
  Future<RoleEntity?> getById(int id) async {
    final data = await _dao.getById(id);
    return data != null ? _toEntity(data) : null;
  }

  @override
  Future<List<RoleEntity>> getAll() async =>
      (await _dao.getAll()).map(_toEntity).toList();

  @override
  Future<int> create(RoleEntity e) => _dao.insert(
        db.RoleCompanion.insert(name: e.name),
      );

  @override
  Future<void> update(RoleEntity e) => _dao.update(
        e.id,
        db.RoleCompanion(name: Value(e.name)),
      );

  @override
  Future<void> delete(int id) => _dao.delete(id);

  @override
  Future<List<PermissionEntity>> getPermissions(int roleId) async =>
      (await _dao.getPermissionsForRole(roleId)).map(_permToEntity).toList();

  @override
  Future<void> assignPermission(int roleId, int permissionId) =>
      _dao.assignPermission(roleId, permissionId);

  @override
  Future<void> removePermission(int roleId, int permissionId) =>
      _dao.removePermission(roleId, permissionId);
}