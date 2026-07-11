import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/wallet/entities/wallet_entity.dart';
import 'package:edu_erp/src/domain/wallet/entities/wallet_transaction_entity.dart';
import 'package:edu_erp/src/domain/wallet/repositories/wallet_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/wallet_dao.dart';

class WalletRepositoryImpl implements WalletRepository {
  final WalletDao _dao;
  WalletRepositoryImpl(this._dao);

  WalletEntity _toEntity(db.WalletData d) =>
      WalletEntity(id: d.id, studentId: d.studentId, balance: d.balance);

  WalletTransactionEntity _txToEntity(db.WalletTransactionData d) =>
      WalletTransactionEntity(
        id: d.id, walletId: d.walletId, amount: d.amount,
        type: d.type, timestamp: d.timestamp, description: d.description,
      );

  @override
  Future<WalletEntity?> getByStudentId(int studentId) async {
    final data = await _dao.getByStudentId(studentId);
    return data != null ? _toEntity(data) : null;
  }

  @override
  Future<int> createWallet(WalletEntity e) => _dao.insertWallet(
        db.WalletCompanion.insert(studentId: e.studentId),
      );

  @override
  Future<void> updateBalance(int id, double newBalance) =>
      _dao.updateBalance(id, newBalance);

  @override
  Future<void> deleteWallet(int id) => _dao.deleteWallet(id);

  @override
  Future<List<WalletEntity>> getAllWallets() async =>
      (await _dao.getAllWallets()).map(_toEntity).toList();

  @override
  Future<List<WalletTransactionEntity>> getTransactions(int walletId) async =>
      (await _dao.getTransactions(walletId)).map(_txToEntity).toList();

  @override
  Future<int> addTransaction(WalletTransactionEntity e) =>
      _dao.insertTransaction(db.WalletTransactionCompanion.insert(
        walletId: e.walletId, amount: e.amount, type: e.type,
        description: Value(e.description),
      ));
}