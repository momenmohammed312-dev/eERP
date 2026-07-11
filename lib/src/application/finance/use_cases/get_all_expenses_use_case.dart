import 'package:edu_erp/src/domain/finance/entities/expense_entity.dart';
import 'package:edu_erp/src/domain/finance/repositories/finance_repository.dart';

class GetAllExpensesUseCase {
  final FinanceRepository _repo;
  GetAllExpensesUseCase(this._repo);
  Future<List<ExpenseEntity>> call() => _repo.getAllExpenses();
}