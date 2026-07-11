import 'package:drift/drift.dart';
import 'classroom_table.dart';
import 'subject_table.dart';
import 'teacher_table.dart';

class ClassSchedule extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get classroomId => integer().references(Classroom, #id)();
  IntColumn get subjectId => integer().references(Subject, #id)();
  IntColumn get teacherId => integer().references(Teacher, #id)();
  IntColumn get dayOfWeek => integer()();
  TextColumn get startTime => text()();
  TextColumn get endTime => text()();
  TextColumn get academicYear => text().nullable()();
}