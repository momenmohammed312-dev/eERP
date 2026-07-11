import 'package:drift/drift.dart';

class Expense extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text()();
  RealColumn get amount => real()();
  DateTimeColumn get expenseDate => dateTime()();
  TextColumn get category => text().nullable()();
  IntColumn get approvedBy => integer()();
}