import 'package:edu_erp/src/domain/finance/entities/receipt_entity.dart';
import 'package:edu_erp/src/domain/finance/repositories/finance_repository.dart';

class CreateReceiptUseCase {
  final FinanceRepository _repo;
  CreateReceiptUseCase(this._repo);
  Future<int> call(ReceiptEntity e) => _repo.createReceipt(e);
}