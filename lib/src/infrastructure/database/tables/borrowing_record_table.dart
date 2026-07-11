import 'package:drift/drift.dart';
import 'book_table.dart';
import 'student_table.dart';

class BorrowingRecord extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get bookId => integer().references(Book, #id)();
  IntColumn get studentId => integer().references(Student, #id)();
  DateTimeColumn get borrowDate => dateTime()();
  DateTimeColumn get dueDate => dateTime().nullable()();
  DateTimeColumn get returnDate => dateTime().nullable()();
  TextColumn get notes => text().nullable()();
}