import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/user_account_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/user_account/user_account_repository_impl.dart';
import 'package:edu_erp/src/domain/user_account/repositories/user_account_repository.dart';
import 'package:edu_erp/src/application/user_account/use_cases/create_user_account_use_case.dart';
import 'package:edu_erp/src/application/user_account/use_cases/get_all_user_accounts_use_case.dart';
import 'package:edu_erp/src/application/user_account/use_cases/get_user_account_by_id_use_case.dart';
import 'package:edu_erp/src/application/user_account/use_cases/update_user_account_use_case.dart';
import 'package:edu_erp/src/application/user_account/use_cases/delete_user_account_use_case.dart';

final _accountRepoProvider = Provider<UserAccountRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return UserAccountRepositoryImpl(UserAccountDao(db));
});

final getAllUserAccountsUseCase = Provider<GetAllUserAccountsUseCase>((ref) {
  return GetAllUserAccountsUseCase(ref.read(_accountRepoProvider));
});

final getUserAccountByIdUseCase = Provider<GetUserAccountByIdUseCase>((ref) {
  return GetUserAccountByIdUseCase(ref.read(_accountRepoProvider));
});

final createUserAccountUseCase = Provider<CreateUserAccountUseCase>((ref) {
  return CreateUserAccountUseCase(ref.read(_accountRepoProvider));
});

final updateUserAccountUseCase = Provider<UpdateUserAccountUseCase>((ref) {
  return UpdateUserAccountUseCase(ref.read(_accountRepoProvider));
});

final deleteUserAccountUseCase = Provider<DeleteUserAccountUseCase>((ref) {
  return DeleteUserAccountUseCase(ref.read(_accountRepoProvider));
});