import 'package:edu_erp/src/domain/role/entities/role_entity.dart';
import 'package:edu_erp/src/domain/role/repositories/role_repository.dart';

class GetRoleByIdUseCase {
  final RoleRepository _repository;
  GetRoleByIdUseCase(this._repository);

  Future<RoleEntity?> call(int id) => _repository.getById(id);
}