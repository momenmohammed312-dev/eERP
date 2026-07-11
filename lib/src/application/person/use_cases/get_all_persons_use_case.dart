import 'package:edu_erp/src/domain/person/entities/person_entity.dart';
import 'package:edu_erp/src/domain/person/repositories/person_repository.dart';

class GetAllPersonsUseCase {
  final PersonRepository _repository;
  GetAllPersonsUseCase(this._repository);

  Future<List<PersonEntity>> call() => _repository.getAll();
}
