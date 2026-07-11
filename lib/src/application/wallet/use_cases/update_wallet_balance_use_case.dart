import 'package:edu_erp/src/domain/wallet/repositories/wallet_repository.dart';

class UpdateWalletBalanceUseCase {
  final WalletRepository _repo;
  UpdateWalletBalanceUseCase(this._repo);
  Future<void> call(int id, double newBalance) =>
      _repo.updateBalance(id, newBalance);
}
