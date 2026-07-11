import 'package:edu_erp/src/domain/wallet/repositories/wallet_repository.dart';

class DeleteWalletUseCase {
  final WalletRepository _repo;
  DeleteWalletUseCase(this._repo);
  Future<void> call(int id) => _repo.deleteWallet(id);
}
