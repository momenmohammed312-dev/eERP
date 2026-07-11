import 'package:edu_erp/src/domain/wallet/entities/wallet_transaction_entity.dart';
import 'package:edu_erp/src/domain/wallet/repositories/wallet_repository.dart';

class GetWalletTransactionsUseCase {
  final WalletRepository _repo;
  GetWalletTransactionsUseCase(this._repo);
  Future<List<WalletTransactionEntity>> call(int walletId) => _repo.getTransactions(walletId);
}