import 'package:edu_erp/src/domain/guardian/entities/guardian_entity.dart';
import 'package:edu_erp/src/domain/guardian/repositories/guardian_repository.dart';

class GetGuardianByIdUseCase {
  final GuardianRepository _repository;
  GetGuardianByIdUseCase(this._repository);

  Future<GuardianEntity?> call(int id) => _repository.getById(id);
}