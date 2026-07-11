import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/guardian_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/guardian/guardian_repository_impl.dart';
import 'package:edu_erp/src/domain/guardian/repositories/guardian_repository.dart';
import 'package:edu_erp/src/application/guardian/use_cases/create_guardian_use_case.dart';
import 'package:edu_erp/src/application/guardian/use_cases/get_all_guardians_use_case.dart';
import 'package:edu_erp/src/application/guardian/use_cases/get_guardian_by_id_use_case.dart';
import 'package:edu_erp/src/application/guardian/use_cases/update_guardian_use_case.dart';
import 'package:edu_erp/src/application/guardian/use_cases/delete_guardian_use_case.dart';

final _guardianRepoProvider = Provider<GuardianRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return GuardianRepositoryImpl(GuardianDao(db));
});

final getAllGuardiansUseCase = Provider<GetAllGuardiansUseCase>((ref) {
  return GetAllGuardiansUseCase(ref.read(_guardianRepoProvider));
});

final getGuardianByIdUseCase = Provider<GetGuardianByIdUseCase>((ref) {
  return GetGuardianByIdUseCase(ref.read(_guardianRepoProvider));
});

final createGuardianUseCase = Provider<CreateGuardianUseCase>((ref) {
  return CreateGuardianUseCase(ref.read(_guardianRepoProvider));
});

final updateGuardianUseCase = Provider<UpdateGuardianUseCase>((ref) {
  return UpdateGuardianUseCase(ref.read(_guardianRepoProvider));
});

final deleteGuardianUseCase = Provider<DeleteGuardianUseCase>((ref) {
  return DeleteGuardianUseCase(ref.read(_guardianRepoProvider));
});
