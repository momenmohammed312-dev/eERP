import 'package:edu_erp/src/domain/user_account/entities/user_account_entity.dart';
import 'package:edu_erp/src/domain/user_account/repositories/user_account_repository.dart';

class GetUserAccountByIdUseCase {
  final UserAccountRepository _repository;
  GetUserAccountByIdUseCase(this._repository);

  Future<UserAccountEntity?> call(int id) => _repository.getById(id);
}