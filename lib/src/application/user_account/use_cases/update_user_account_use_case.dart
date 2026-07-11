import 'package:edu_erp/src/domain/user_account/entities/user_account_entity.dart';
import 'package:edu_erp/src/domain/user_account/repositories/user_account_repository.dart';

class UpdateUserAccountUseCase {
  final UserAccountRepository _repository;
  UpdateUserAccountUseCase(this._repository);

  Future<void> call(UserAccountEntity account) => _repository.update(account);
}
