import 'package:drift/drift.dart';

class Book extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get author => text().nullable()();
  TextColumn get isbn => text().nullable()();
  IntColumn get totalCopies => integer().withDefault(const Constant(1))();
  IntColumn get availableCopies => integer().withDefault(const Constant(1))();
}