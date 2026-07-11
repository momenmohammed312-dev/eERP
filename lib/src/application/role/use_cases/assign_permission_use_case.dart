import 'package:edu_erp/src/domain/role/repositories/role_repository.dart';

class AssignPermissionUseCase {
  final RoleRepository _repository;
  AssignPermissionUseCase(this._repository);

  Future<void> call(int roleId, int permissionId) =>
      _repository.assignPermission(roleId, permissionId);
}
