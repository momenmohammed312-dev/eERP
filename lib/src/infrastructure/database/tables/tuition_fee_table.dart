import 'package:drift/drift.dart';
import 'student_table.dart';

class TuitionFee extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get studentId => integer().references(Student, #id)();
  RealColumn get amount => real()();
  DateTimeColumn get dueDate => dateTime()();
  BoolColumn get isPaid => boolean().withDefault(const Constant(false))();
  DateTimeColumn get paidAt => dateTime().nullable()();
  TextColumn get notes => text().nullable()();
}