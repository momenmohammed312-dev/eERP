import 'package:drift/drift.dart';
import 'student_table.dart';

class Receipt extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get studentId => integer().references(Student, #id)();
  RealColumn get amount => real()();
  DateTimeColumn get receiptDate => dateTime()();
  TextColumn get paymentMethod => text().nullable()();
  TextColumn get notes => text().nullable()();
  IntColumn get receivedBy => integer()();
}