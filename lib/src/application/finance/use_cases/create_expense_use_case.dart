import 'package:edu_erp/src/domain/finance/entities/expense_entity.dart';
import 'package:edu_erp/src/domain/finance/repositories/finance_repository.dart';

class CreateExpenseUseCase {
  final FinanceRepository _repo;
  CreateExpenseUseCase(this._repo);
  Future<int> call(ExpenseEntity e) => _repo.createExpense(e);
}