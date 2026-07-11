import 'package:edu_erp/src/domain/wallet/entities/wallet_entity.dart';
import 'package:edu_erp/src/domain/wallet/repositories/wallet_repository.dart';

class ListAllWalletsUseCase {
  final WalletRepository _repo;
  ListAllWalletsUseCase(this._repo);
  Future<List<WalletEntity>> call() => _repo.getAllWallets();
}
