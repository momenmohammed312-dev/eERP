import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/user_account/entities/user_account_entity.dart';
import 'package:edu_erp/src/domain/user_account/repositories/user_account_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/user_account_dao.dart';

class UserAccountRepositoryImpl implements UserAccountRepository {
  final UserAccountDao _dao;
  UserAccountRepositoryImpl(this._dao);

  UserAccountEntity _toEntity(db.UserAccountData d) => UserAccountEntity(
        id: d.id,
        personId: d.personId,
        username: d.username,
        passwordHash: d.passwordHash,
        roleId: d.roleId,
        isActive: d.isActive,
      );

  @override
  Future<UserAccountEntity?> getById(int id) async {
    final data = await _dao.getById(id);
    return data != null ? _toEntity(data) : null;
  }

  @override
  Future<List<UserAccountEntity>> getAll() async =>
      (await _dao.getAll()).map(_toEntity).toList();

  @override
  Future<int> create(UserAccountEntity e) => _dao.insert(
        db.UserAccountCompanion.insert(
          personId: e.personId,
          username: e.username,
          passwordHash: e.passwordHash,
          roleId: e.roleId,
          isActive: Value(e.isActive),
        ),
      );

  @override
  Future<void> update(UserAccountEntity e) => _dao.update(
        e.id,
        db.UserAccountCompanion(
          personId: Value(e.personId),
          username: Value(e.username),
          passwordHash: Value(e.passwordHash),
          roleId: Value(e.roleId),
          isActive: Value(e.isActive),
        ),
      );

  @override
  Future<void> delete(int id) => _dao.delete(id);

  @override
  Future<UserAccountEntity?> getByUsername(String username) async {
    final result = await _dao.getByUsername(username);
    if (result == null) return null;
    return _toEntity(result['userAccount'] as db.UserAccountData);
  }
}