import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/finance/entities/tuition_fee_entity.dart';
import 'package:edu_erp/src/domain/finance/entities/receipt_entity.dart';
import 'package:edu_erp/src/domain/finance/entities/expense_entity.dart';
import 'package:edu_erp/src/domain/finance/entities/payroll_entity.dart';
import 'package:edu_erp/src/domain/finance/repositories/finance_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/finance_dao.dart';

class FinanceRepositoryImpl implements FinanceRepository {
  final FinanceDao _dao;
  FinanceRepositoryImpl(this._dao);

  TuitionFeeEntity _tf(db.TuitionFeeData d) => TuitionFeeEntity(
      id: d.id, studentId: d.studentId, amount: d.amount, dueDate: d.dueDate,
      isPaid: d.isPaid, paidAt: d.paidAt, notes: d.notes);
  ReceiptEntity _r(db.ReceiptData d) => ReceiptEntity(
      id: d.id, studentId: d.studentId, amount: d.amount,
      receiptDate: d.receiptDate, paymentMethod: d.paymentMethod,
      notes: d.notes, receivedBy: d.receivedBy);
  ExpenseEntity _ex(db.ExpenseData d) => ExpenseEntity(
      id: d.id, description: d.description, amount: d.amount,
      expenseDate: d.expenseDate, category: d.category, approvedBy: d.approvedBy);
  PayrollEntity _p(db.PayrollData d) => PayrollEntity(
      id: d.id, employeeId: d.employeeId, salary: d.salary,
      deductions: d.deductions, bonuses: d.bonuses, payDate: d.payDate,
      notes: d.notes);

  @override Future<TuitionFeeEntity?> getTuitionFeeById(int id) async { final d = await _dao.getTuitionFeeById(id); return d != null ? _tf(d) : null; }
  @override Future<List<TuitionFeeEntity>> getAllTuitionFees() async => (await _dao.getAllTuitionFees()).map(_tf).toList();
  @override Future<int> createTuitionFee(TuitionFeeEntity e) => _dao.insertTuitionFee(db.TuitionFeeCompanion.insert(studentId: e.studentId, amount: e.amount, dueDate: e.dueDate, notes: Value(e.notes)));
  @override Future<void> updateTuitionFee(TuitionFeeEntity e) => _dao.updateTuitionFee(e.id, db.TuitionFeeCompanion(studentId: Value(e.studentId), amount: Value(e.amount), dueDate: Value(e.dueDate), notes: Value(e.notes)));
  @override Future<void> deleteTuitionFee(int id) => _dao.deleteTuitionFee(id);
  @override Future<List<TuitionFeeEntity>> getTuitionFeesByStudent(int sid) async => (await _dao.getTuitionFeesByStudent(sid)).map(_tf).toList();

  @override Future<ReceiptEntity?> getReceiptById(int id) async { final d = await _dao.getReceiptById(id); return d != null ? _r(d) : null; }
  @override Future<List<ReceiptEntity>> getAllReceipts() async => (await _dao.getAllReceipts()).map(_r).toList();
  @override Future<int> createReceipt(ReceiptEntity e) => _dao.insertReceipt(db.ReceiptCompanion.insert(studentId: e.studentId, amount: e.amount, receiptDate: e.receiptDate, paymentMethod: Value(e.paymentMethod), notes: Value(e.notes), receivedBy: e.receivedBy));
  @override Future<void> deleteReceipt(int id) => _dao.deleteReceipt(id);

  @override Future<ExpenseEntity?> getExpenseById(int id) async { final d = await _dao.getExpenseById(id); return d != null ? _ex(d) : null; }
  @override Future<List<ExpenseEntity>> getAllExpenses() async => (await _dao.getAllExpenses()).map(_ex).toList();
  @override Future<int> createExpense(ExpenseEntity e) => _dao.insertExpense(db.ExpenseCompanion.insert(description: e.description, amount: e.amount, expenseDate: e.expenseDate, category: Value(e.category), approvedBy: e.approvedBy));
  @override Future<void> updateExpense(ExpenseEntity e) => _dao.updateExpense(e.id, db.ExpenseCompanion(description: Value(e.description), amount: Value(e.amount), expenseDate: Value(e.expenseDate), category: Value(e.category), approvedBy: Value(e.approvedBy)));
  @override Future<void> deleteExpense(int id) => _dao.deleteExpense(id);

  @override Future<PayrollEntity?> getPayrollById(int id) async { final d = await _dao.getPayrollById(id); return d != null ? _p(d) : null; }
  @override Future<List<PayrollEntity>> getAllPayrolls() async => (await _dao.getAllPayrolls()).map(_p).toList();
  @override Future<int> createPayroll(PayrollEntity e) => _dao.insertPayroll(db.PayrollCompanion.insert(employeeId: e.employeeId, salary: e.salary, deductions: Value(e.deductions), bonuses: Value(e.bonuses), payDate: e.payDate, notes: Value(e.notes)));
  @override Future<void> updatePayroll(PayrollEntity e) => _dao.updatePayroll(e.id, db.PayrollCompanion(employeeId: Value(e.employeeId), salary: Value(e.salary), deductions: Value(e.deductions), bonuses: Value(e.bonuses), payDate: Value(e.payDate), notes: Value(e.notes)));
  @override Future<void> deletePayroll(int id) => _dao.deletePayroll(id);
  @override Future<List<PayrollEntity>> getPayrollsByEmployee(int eid) async => (await _dao.getPayrollsByEmployee(eid)).map(_p).toList();
}