import 'package:edu_erp/src/domain/role/repositories/role_repository.dart';

class DeleteRoleUseCase {
  final RoleRepository _repository;
  DeleteRoleUseCase(this._repository);

  Future<void> call(int id) => _repository.delete(id);
}
