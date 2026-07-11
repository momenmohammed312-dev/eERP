import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/person_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/person/person_repository_impl.dart';
import 'package:edu_erp/src/domain/person/repositories/person_repository.dart';
import 'package:edu_erp/src/application/person/use_cases/get_all_persons_use_case.dart';
import 'package:edu_erp/src/application/person/use_cases/get_person_by_id_use_case.dart';

final _personRepoProvider = Provider<PersonRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return PersonRepositoryImpl(PersonDao(db));
});

final getAllPersonsUseCase = Provider<GetAllPersonsUseCase>((ref) {
  return GetAllPersonsUseCase(ref.read(_personRepoProvider));
});

final getPersonByIdUseCase = Provider<GetPersonByIdUseCase>((ref) {
  return GetPersonByIdUseCase(ref.read(_personRepoProvider));
});
