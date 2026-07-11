import 'package:drift/drift.dart';
import 'exam_table.dart';
import 'subject_table.dart';
import 'student_table.dart';

class Grade extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get studentId => integer().references(Student, #id)();
  IntColumn get examId => integer().references(Exam, #id)();
  IntColumn get subjectId => integer().references(Subject, #id)();
  RealColumn get score => real()();
  TextColumn get gradeLetter => text().nullable()();
  TextColumn get notes => text().nullable()();
}