import 'package:edu_erp/src/domain/person/repositories/person_repository.dart';

class DeletePersonUseCase {
  final PersonRepository _repository;
  DeletePersonUseCase(this._repository);

  Future<void> call(int id) => _repository.delete(id);
}
