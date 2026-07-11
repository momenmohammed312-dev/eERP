import 'package:edu_erp/src/domain/person/entities/person_entity.dart';
import 'package:edu_erp/src/domain/person/repositories/person_repository.dart';

class CreatePersonUseCase {
  final PersonRepository _repository;
  CreatePersonUseCase(this._repository);

  Future<int> call(PersonEntity person) => _repository.create(person);
}
