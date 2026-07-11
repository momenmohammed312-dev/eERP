import 'package:edu_erp/src/domain/role/repositories/role_repository.dart';

class RemovePermissionUseCase {
  final RoleRepository _repository;
  RemovePermissionUseCase(this._repository);

  Future<void> call(int roleId, int permissionId) =>
      _repository.removePermission(roleId, permissionId);
}
