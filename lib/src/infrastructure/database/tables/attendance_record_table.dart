import 'package:drift/drift.dart';
import 'student_table.dart';

class AttendanceRecord extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get studentId => integer().references(Student, #id)();
  DateTimeColumn get date => dateTime()();
  TextColumn get status => text()();
  TextColumn get checkInTime => text().nullable()();
  TextColumn get checkOutTime => text().nullable()();
  TextColumn get notes => text().nullable()();
  IntColumn get recordedBy => integer()();
}