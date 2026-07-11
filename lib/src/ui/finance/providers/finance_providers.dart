import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:edu_erp/src/ui/person/providers/database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/finance_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/finance/finance_repository_impl.dart';
import 'package:edu_erp/src/domain/finance/repositories/finance_repository.dart';
import 'package:edu_erp/src/application/finance/use_cases/create_tuition_fee_use_case.dart';
import 'package:edu_erp/src/application/finance/use_cases/get_all_tuition_fees_use_case.dart';
import 'package:edu_erp/src/application/finance/use_cases/create_receipt_use_case.dart';
import 'package:edu_erp/src/application/finance/use_cases/get_all_receipts_use_case.dart';
import 'package:edu_erp/src/application/finance/use_cases/create_expense_use_case.dart';
import 'package:edu_erp/src/application/finance/use_cases/get_all_expenses_use_case.dart';
import 'package:edu_erp/src/application/finance/use_cases/create_payroll_use_case.dart';
import 'package:edu_erp/src/application/finance/use_cases/get_all_payrolls_use_case.dart';

final _financeRepoProvider = Provider<FinanceRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return FinanceRepositoryImpl(FinanceDao(db));
});

final getAllTuitionFeesUseCase = Provider<GetAllTuitionFeesUseCase>((ref) {
  return GetAllTuitionFeesUseCase(ref.read(_financeRepoProvider));
});
final createTuitionFeeUseCase = Provider<CreateTuitionFeeUseCase>((ref) {
  return CreateTuitionFeeUseCase(ref.read(_financeRepoProvider));
});
final getAllReceiptsUseCase = Provider<GetAllReceiptsUseCase>((ref) {
  return GetAllReceiptsUseCase(ref.read(_financeRepoProvider));
});
final createReceiptUseCase = Provider<CreateReceiptUseCase>((ref) {
  return CreateReceiptUseCase(ref.read(_financeRepoProvider));
});
final getAllExpensesUseCase = Provider<GetAllExpensesUseCase>((ref) {
  return GetAllExpensesUseCase(ref.read(_financeRepoProvider));
});
final createExpenseUseCase = Provider<CreateExpenseUseCase>((ref) {
  return CreateExpenseUseCase(ref.read(_financeRepoProvider));
});
final getAllPayrollsUseCase = Provider<GetAllPayrollsUseCase>((ref) {
  return GetAllPayrollsUseCase(ref.read(_financeRepoProvider));
});
final createPayrollUseCase = Provider<CreatePayrollUseCase>((ref) {
  return CreatePayrollUseCase(ref.read(_financeRepoProvider));
});