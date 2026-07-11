import 'package:drift/drift.dart';

class Payroll extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get employeeId => integer()();
  RealColumn get salary => real()();
  RealColumn get deductions => real().nullable()();
  RealColumn get bonuses => real().nullable()();
  DateTimeColumn get payDate => dateTime()();
  TextColumn get notes => text().nullable()();
}