import '../entities/tuition_fee_entity.dart';
import '../entities/receipt_entity.dart';
import '../entities/expense_entity.dart';
import '../entities/payroll_entity.dart';

abstract class FinanceRepository {
  Future<TuitionFeeEntity?> getTuitionFeeById(int id);
  Future<List<TuitionFeeEntity>> getAllTuitionFees();
  Future<int> createTuitionFee(TuitionFeeEntity entity);
  Future<void> updateTuitionFee(TuitionFeeEntity entity);
  Future<void> deleteTuitionFee(int id);
  Future<List<TuitionFeeEntity>> getTuitionFeesByStudent(int studentId);

  Future<ReceiptEntity?> getReceiptById(int id);
  Future<List<ReceiptEntity>> getAllReceipts();
  Future<int> createReceipt(ReceiptEntity entity);
  Future<void> deleteReceipt(int id);

  Future<ExpenseEntity?> getExpenseById(int id);
  Future<List<ExpenseEntity>> getAllExpenses();
  Future<int> createExpense(ExpenseEntity entity);
  Future<void> updateExpense(ExpenseEntity entity);
  Future<void> deleteExpense(int id);

  Future<PayrollEntity?> getPayrollById(int id);
  Future<List<PayrollEntity>> getAllPayrolls();
  Future<int> createPayroll(PayrollEntity entity);
  Future<void> updatePayroll(PayrollEntity entity);
  Future<void> deletePayroll(int id);
  Future<List<PayrollEntity>> getPayrollsByEmployee(int employeeId);
}