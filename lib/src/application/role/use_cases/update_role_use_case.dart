import 'package:edu_erp/src/domain/role/entities/role_entity.dart';
import 'package:edu_erp/src/domain/role/repositories/role_repository.dart';

class UpdateRoleUseCase {
  final RoleRepository _repository;
  UpdateRoleUseCase(this._repository);

  Future<void> call(RoleEntity role) => _repository.update(role);
}
