import 'package:edu_erp/src/domain/wallet/entities/wallet_entity.dart';
import 'package:edu_erp/src/domain/wallet/repositories/wallet_repository.dart';

class CreateWalletUseCase {
  final WalletRepository _repo;
  CreateWalletUseCase(this._repo);
  Future<int> call(WalletEntity entity) => _repo.createWallet(entity);
}
