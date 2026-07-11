import 'package:edu_erp/src/domain/finance/entities/payroll_entity.dart';
import 'package:edu_erp/src/domain/finance/repositories/finance_repository.dart';

class GetAllPayrollsUseCase {
  final FinanceRepository _repo;
  GetAllPayrollsUseCase(this._repo);
  Future<List<PayrollEntity>> call() => _repo.getAllPayrolls();
}