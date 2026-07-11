import 'package:edu_erp/src/domain/finance/entities/payroll_entity.dart';
import 'package:edu_erp/src/domain/finance/repositories/finance_repository.dart';

class CreatePayrollUseCase {
  final FinanceRepository _repo;
  CreatePayrollUseCase(this._repo);
  Future<int> call(PayrollEntity e) => _repo.createPayroll(e);
}