import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/user_account_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/user_account/user_account_repository_impl.dart';
import 'package:edu_erp/src/domain/user_account/repositories/user_account_repository.dart';
import 'package:edu_erp/src/application/user_account/use_cases/create_user_account_use_case.dart';
import 'package:edu_erp/src/application/user_account/use_cases/get_all_user_accounts_use_case.dart';
import 'package:edu_erp/src/application/user_account/use_cases/get_user_account_by_id_use_case.dart';
import 'package:edu_erp/src/application/user_account/use_cases/get_user_account_by_username_use_case.dart';
import 'package:edu_erp/src/application/user_account/use_cases/update_user_account_use_case.dart';
import 'package:edu_erp/src/application/user_account/use_cases/delete_user_account_use_case.dart';

final accountRepoProvider = Provider<UserAccountRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return UserAccountRepositoryImpl(UserAccountDao(db));
});

final getAllUserAccountsUseCase = Provider<GetAllUserAccountsUseCase>((ref) {
  return GetAllUserAccountsUseCase(ref.read(accountRepoProvider));
});

final getUserAccountByIdUseCase = Provider<GetUserAccountByIdUseCase>((ref) {
  return GetUserAccountByIdUseCase(ref.read(accountRepoProvider));
});

final getUserAccountByUsernameUseCase =
    Provider<GetUserAccountByUsernameUseCase>((ref) {
  return GetUserAccountByUsernameUseCase(ref.read(accountRepoProvider));
});

final createUserAccountUseCase = Provider<CreateUserAccountUseCase>((ref) {
  return CreateUserAccountUseCase(ref.read(accountRepoProvider));
});

final updateUserAccountUseCase = Provider<UpdateUserAccountUseCase>((ref) {
  return UpdateUserAccountUseCase(ref.read(accountRepoProvider));
});

final deleteUserAccountUseCase = Provider<DeleteUserAccountUseCase>((ref) {
  return DeleteUserAccountUseCase(ref.read(accountRepoProvider));
});
