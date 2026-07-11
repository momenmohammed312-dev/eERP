import 'package:drift/drift.dart';

class Classroom extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get code => text().nullable()();
  TextColumn get gradeLevel => text().nullable()();
  IntColumn get capacity => integer().nullable()();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
}