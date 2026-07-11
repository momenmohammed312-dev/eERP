import 'package:edu_erp/src/domain/guardian/entities/guardian_entity.dart';
import 'package:edu_erp/src/domain/guardian/repositories/guardian_repository.dart';

class GetAllGuardiansUseCase {
  final GuardianRepository _repository;
  GetAllGuardiansUseCase(this._repository);

  Future<List<GuardianEntity>> call() => _repository.getAll();
}
