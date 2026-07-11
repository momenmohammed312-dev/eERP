import '../entities/wallet_entity.dart';
import '../entities/wallet_transaction_entity.dart';

abstract class WalletRepository {
  Future<WalletEntity?> getByStudentId(int studentId);
  Future<int> createWallet(WalletEntity entity);
  Future<void> updateBalance(int id, double newBalance);
  Future<void> deleteWallet(int id);
  Future<List<WalletEntity>> getAllWallets();
  Future<List<WalletTransactionEntity>> getTransactions(int walletId);
  Future<int> addTransaction(WalletTransactionEntity entity);
}