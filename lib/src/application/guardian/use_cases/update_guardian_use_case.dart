import 'package:edu_erp/src/domain/guardian/entities/guardian_entity.dart';
import 'package:edu_erp/src/domain/guardian/repositories/guardian_repository.dart';

class UpdateGuardianUseCase {
  final GuardianRepository _repository;
  UpdateGuardianUseCase(this._repository);

  Future<void> call(GuardianEntity guardian) => _repository.update(guardian);
}
