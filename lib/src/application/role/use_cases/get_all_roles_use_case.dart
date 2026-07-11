import 'package:edu_erp/src/domain/role/entities/role_entity.dart';
import 'package:edu_erp/src/domain/role/repositories/role_repository.dart';

class GetAllRolesUseCase {
  final RoleRepository _repository;
  GetAllRolesUseCase(this._repository);

  Future<List<RoleEntity>> call() => _repository.getAll();
}
