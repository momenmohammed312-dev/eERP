import 'package:edu_erp/src/domain/user_account/entities/user_account_entity.dart';
import 'package:edu_erp/src/domain/user_account/repositories/user_account_repository.dart';

class GetUserAccountByUsernameUseCase {
  final UserAccountRepository _repository;
  GetUserAccountByUsernameUseCase(this._repository);

  Future<UserAccountEntity?> call(String username) =>
      _repository.getByUsername(username);
}
