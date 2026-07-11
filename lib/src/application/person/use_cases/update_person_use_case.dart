import 'package:edu_erp/src/domain/person/entities/person_entity.dart';
import 'package:edu_erp/src/domain/person/repositories/person_repository.dart';

class UpdatePersonUseCase {
  final PersonRepository _repository;
  UpdatePersonUseCase(this._repository);

  Future<void> call(PersonEntity person) => _repository.update(person);
}
