// role

// id, name (admin/teacher/receptionist/accountant...)
import 'package:drift/drift.dart';
class Role extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}