import '../entities/person_entity.dart';

abstract class PersonRepository {
  Future<PersonEntity?> getById(int id);
  Future<List<PersonEntity>> getAll();
  Future<int> create(PersonEntity person);
  Future<void> update(PersonEntity person);
  Future<void> delete(int id);
}