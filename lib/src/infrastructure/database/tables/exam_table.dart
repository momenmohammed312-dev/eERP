import 'package:drift/drift.dart';
import 'subject_table.dart';
import 'classroom_table.dart';

class Exam extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get subjectId => integer().references(Subject, #id)();
  IntColumn get classroomId => integer().references(Classroom, #id)();
  DateTimeColumn get examDate => dateTime()();
  TextColumn get examType => text().nullable()();
  RealColumn get maxScore => real().nullable()();
  TextColumn get description => text().nullable()();
}