import 'package:edu_erp/src/domain/person/entities/person_entity.dart';
import 'package:edu_erp/src/domain/person/repositories/person_repository.dart';

class GetPersonByIdUseCase {
  final PersonRepository _repository;
  GetPersonByIdUseCase(this._repository);

  Future<PersonEntity?> call(int id) => _repository.getById(id);
}