import 'package:edu_erp/src/domain/role/entities/role_entity.dart';
import 'package:edu_erp/src/domain/role/repositories/role_repository.dart';

class CreateRoleUseCase {
  final RoleRepository _repository;
  CreateRoleUseCase(this._repository);

  Future<int> call(RoleEntity role) => _repository.create(role);
}
