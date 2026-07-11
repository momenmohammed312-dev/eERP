import '../entities/user_account_entity.dart';

abstract class UserAccountRepository {
  Future<UserAccountEntity?> getById(int id);
  Future<List<UserAccountEntity>> getAll();
  Future<int> create(UserAccountEntity account);
  Future<void> update(UserAccountEntity account);
  Future<void> delete(int id);
  Future<UserAccountEntity?> getByUsername(String username);
}