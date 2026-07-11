import 'package:drift/drift.dart';
import '../app_database.dart';

class WalletDao {
  final AppDatabase db;
  WalletDao(this.db);

  Future<int> insertWallet(WalletCompanion data) =>
      db.into(db.wallet).insert(data);
  Future<WalletData?> getByStudentId(int sid) =>
      (db.select(db.wallet)..where((t) => t.studentId.equals(sid)))
          .getSingleOrNull();
  Future<int> updateBalance(int id, double balance) =>
      (db.update(db.wallet)..where((t) => t.id.equals(id)))
          .write(WalletCompanion(balance: Value(balance)));

  Future<int> insertTransaction(WalletTransactionCompanion data) =>
      db.into(db.walletTransaction).insert(data);
  Future<List<WalletTransactionData>> getTransactions(int wid) =>
      (db.select(db.walletTransaction)..where((t) => t.walletId.equals(wid)))
          .get();
}