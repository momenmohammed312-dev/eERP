import 'package:edu_erp/src/domain/user_account/entities/user_account_entity.dart';
import 'package:edu_erp/src/domain/user_account/repositories/user_account_repository.dart';

class CreateUserAccountUseCase {
  final UserAccountRepository _repository;
  CreateUserAccountUseCase(this._repository);

  Future<int> call(UserAccountEntity account) => _repository.create(account);
}
