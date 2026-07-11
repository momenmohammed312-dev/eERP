import 'package:drift/drift.dart';
import 'student_table.dart';

class Wallet extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get studentId => integer().references(Student, #id).unique()();
  RealColumn get balance => real().withDefault(const Constant(0))();
}