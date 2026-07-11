import 'package:edu_erp/src/domain/wallet/entities/wallet_entity.dart';
import 'package:edu_erp/src/domain/wallet/repositories/wallet_repository.dart';

class GetWalletByStudentUseCase {
  final WalletRepository _repo;
  GetWalletByStudentUseCase(this._repo);
  Future<WalletEntity?> call(int studentId) => _repo.getByStudentId(studentId);
}