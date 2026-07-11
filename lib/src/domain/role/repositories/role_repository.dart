import '../entities/role_entity.dart';
import '../entities/permission_entity.dart';

abstract class RoleRepository {
  Future<RoleEntity?> getById(int id);
  Future<List<RoleEntity>> getAll();
  Future<int> create(RoleEntity role);
  Future<void> update(RoleEntity role);
  Future<void> delete(int id);
  Future<List<PermissionEntity>> getPermissions(int roleId);
  Future<void> assignPermission(int roleId, int permissionId);
  Future<void> removePermission(int roleId, int permissionId);
}