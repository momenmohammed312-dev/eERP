import 'package:edu_erp/src/domain/guardian/entities/guardian_entity.dart';
import 'package:edu_erp/src/domain/guardian/repositories/guardian_repository.dart';

class CreateGuardianUseCase {
  final GuardianRepository _repository;
  CreateGuardianUseCase(this._repository);

  Future<int> call(GuardianEntity guardian) => _repository.create(guardian);
}
