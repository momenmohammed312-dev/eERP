import 'package:edu_erp/src/domain/finance/entities/receipt_entity.dart';
import 'package:edu_erp/src/domain/finance/repositories/finance_repository.dart';

class GetAllReceiptsUseCase {
  final FinanceRepository _repo;
  GetAllReceiptsUseCase(this._repo);
  Future<List<ReceiptEntity>> call() => _repo.getAllReceipts();
}