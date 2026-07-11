import 'package:edu_erp/src/domain/role/entities/permission_entity.dart';
import 'package:edu_erp/src/domain/role/repositories/role_repository.dart';

class GetPermissionsForRoleUseCase {
  final RoleRepository _repository;
  GetPermissionsForRoleUseCase(this._repository);

  Future<List<PermissionEntity>> call(int roleId) =>
      _repository.getPermissions(roleId);
}
