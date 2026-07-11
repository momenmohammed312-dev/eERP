// user_account (login, لو فيه أكتر من مستخدم للنظام لاحقًا)

// id, person_id (FK), username, password_hash, role_id (FK), is_active
import 'package:drift/drift.dart';
import 'package:edu_erp/src/infrastructure/database/tables/person_table.dart';
import 'package:edu_erp/src/infrastructure/database/tables/role_table.dart';
class UserAccount extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get personId => integer().references(Person, #id)();
  TextColumn get username => text()();
  TextColumn get passwordHash => text()();
  IntColumn get roleId => integer().references(Role, #id)();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
}