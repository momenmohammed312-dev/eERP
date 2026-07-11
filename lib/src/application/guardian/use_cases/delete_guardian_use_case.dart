import 'package:edu_erp/src/domain/guardian/repositories/guardian_repository.dart';

class DeleteGuardianUseCase {
  final GuardianRepository _repository;
  DeleteGuardianUseCase(this._repository);

  Future<void> call(int id) => _repository.delete(id);
}
