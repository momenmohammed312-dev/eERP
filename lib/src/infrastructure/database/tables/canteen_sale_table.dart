import 'package:drift/drift.dart';
import 'student_table.dart';

class CanteenSale extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get studentId => integer().references(Student, #id)();
  RealColumn get amount => real()();
  DateTimeColumn get saleDate => dateTime().withDefault(currentDateAndTime)();
  TextColumn get items => text().nullable()();
  IntColumn get recordedBy => integer()();
}