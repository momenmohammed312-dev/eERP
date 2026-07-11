import '../app_database.dart';

class FinanceDao {
  final AppDatabase db;
  FinanceDao(this.db);

  Future<int> insertTuitionFee(TuitionFeeCompanion data) =>
      db.into(db.tuitionFee).insert(data);
  Future<TuitionFeeData?> getTuitionFeeById(int id) =>
      (db.select(db.tuitionFee)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<TuitionFeeData>> getAllTuitionFees() =>
      db.select(db.tuitionFee).get();
  Future<int> updateTuitionFee(int id, TuitionFeeCompanion data) =>
      (db.update(db.tuitionFee)..where((t) => t.id.equals(id))).write(data);
  Future<int> deleteTuitionFee(int id) =>
      (db.delete(db.tuitionFee)..where((t) => t.id.equals(id))).go();
  Future<List<TuitionFeeData>> getTuitionFeesByStudent(int sid) =>
      (db.select(db.tuitionFee)..where((t) => t.studentId.equals(sid))).get();

  Future<int> insertReceipt(ReceiptCompanion data) =>
      db.into(db.receipt).insert(data);
  Future<ReceiptData?> getReceiptById(int id) =>
      (db.select(db.receipt)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<ReceiptData>> getAllReceipts() =>
      db.select(db.receipt).get();
  Future<int> deleteReceipt(int id) =>
      (db.delete(db.receipt)..where((t) => t.id.equals(id))).go();

  Future<int> insertExpense(ExpenseCompanion data) =>
      db.into(db.expense).insert(data);
  Future<ExpenseData?> getExpenseById(int id) =>
      (db.select(db.expense)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<ExpenseData>> getAllExpenses() =>
      db.select(db.expense).get();
  Future<int> updateExpense(int id, ExpenseCompanion data) =>
      (db.update(db.expense)..where((t) => t.id.equals(id))).write(data);
  Future<int> deleteExpense(int id) =>
      (db.delete(db.expense)..where((t) => t.id.equals(id))).go();

  Future<int> insertPayroll(PayrollCompanion data) =>
      db.into(db.payroll).insert(data);
  Future<PayrollData?> getPayrollById(int id) =>
      (db.select(db.payroll)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<PayrollData>> getAllPayrolls() =>
      db.select(db.payroll).get();
  Future<int> updatePayroll(int id, PayrollCompanion data) =>
      (db.update(db.payroll)..where((t) => t.id.equals(id))).write(data);
  Future<int> deletePayroll(int id) =>
      (db.delete(db.payroll)..where((t) => t.id.equals(id))).go();
  Future<List<PayrollData>> getPayrollsByEmployee(int eid) =>
      (db.select(db.payroll)..where((t) => t.employeeId.equals(eid))).get();
}