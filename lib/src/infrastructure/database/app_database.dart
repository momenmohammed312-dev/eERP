import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'tables/employee_table.dart';
import 'tables/guardian_table.dart';
import 'tables/person_table.dart';
import 'tables/role_permission_table.dart';
import 'tables/role_table.dart';
import 'tables/student_table.dart';
import 'tables/teacher_table.dart';
import 'tables/user_account_table.dart';
import 'tables/permission_table.dart';
import 'tables/subject_table.dart';
import 'tables/classroom_table.dart';
import 'tables/class_schedule_table.dart';
import 'tables/exam_table.dart';
import 'tables/grade_table.dart';
import 'tables/section_assignment_table.dart';
import 'tables/attendance_record_table.dart';
import 'tables/tuition_fee_table.dart';
import 'tables/receipt_table.dart';
import 'tables/expense_table.dart';
import 'tables/payroll_table.dart';
import 'tables/wallet_table.dart';
import 'tables/wallet_transaction_table.dart';
import 'tables/canteen_sale_table.dart';
import 'tables/book_table.dart';
import 'tables/borrowing_record_table.dart';
import 'tables/inventory_item_table.dart';
import 'tables/purchase_order_table.dart';
import 'tables/supplier_table.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'app_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app.db'));
    return NativeDatabase.createInBackground(file);
  });
}

@DriftDatabase(
  tables: [
    Person,
    Student,
    Guardian,
    Teacher,
    Employee,
    Role,
    Permission,
    RolePermission,
    UserAccount,
    Subject,
    Classroom,
    ClassSchedule,
    Exam,
    Grade,
    SectionAssignment,
    AttendanceRecord,
    TuitionFee,
    Receipt,
    Expense,
    Payroll,
    Wallet,
    WalletTransaction,
    CanteenSale,
    Book,
    BorrowingRecord,
    InventoryItem,
    PurchaseOrder,
    Supplier,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 3;
}