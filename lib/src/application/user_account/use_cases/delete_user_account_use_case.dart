import 'package:edu_erp/src/domain/user_account/repositories/user_account_repository.dart';

class DeleteUserAccountUseCase {
  final UserAccountRepository _repository;
  DeleteUserAccountUseCase(this._repository);

  Future<void> call(int id) => _repository.delete(id);
}
