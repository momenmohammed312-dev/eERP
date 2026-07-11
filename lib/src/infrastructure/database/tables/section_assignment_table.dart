import 'package:drift/drift.dart';
import 'classroom_table.dart';
import 'student_table.dart';

class SectionAssignment extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get studentId => integer().references(Student, #id)();
  IntColumn get classroomId => integer().references(Classroom, #id)();
  TextColumn get academicYear => text().nullable()();
}