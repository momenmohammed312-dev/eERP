import 'package:edu_erp/src/domain/user_account/entities/user_account_entity.dart';
import 'package:edu_erp/src/domain/user_account/repositories/user_account_repository.dart';

class GetAllUserAccountsUseCase {
  final UserAccountRepository _repository;
  GetAllUserAccountsUseCase(this._repository);

  Future<List<UserAccountEntity>> call() => _repository.getAll();
}
