import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'tables/tables.dart';
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
    Person, Student, Guardian, Teacher, Employee,
    Role, Permission, RolePermission, UserAccount,
    Subject, Classroom, ClassSchedule, Exam, Grade,
    SectionAssignment, AttendanceRecord, TuitionFee,
    Receipt, Expense, Payroll, Wallet, WalletTransaction,
    CanteenSale, CanteenProduct, Book, BorrowingRecord, InventoryItem,
    PurchaseOrder, Supplier, Setting,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 5;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade: (m, from, to) async {
          if (from < 4) await m.createTable(setting);
          if (from < 5) await m.createTable(canteenProduct);
        },
      );
}
