// permission

// id, name (create_student/edit_payment/view_reports...)
import 'package:drift/drift.dart';
class Permission extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}