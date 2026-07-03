// role_permission (many-to-many join)

// role_id (FK), permission_id (FK)
import 'package:drift/drift.dart';
import 'package:edu_erp/src/infrastructure/database/tables/role_table.dart';
import 'package:edu_erp/src/infrastructure/database/tables/permission_table.dart';

class RolePermission extends Table {
  IntColumn get roleId => integer().references(Role, #id)();
  IntColumn get permissionId => integer().references(Permission, #id)();

  @override
  Set<Column> get primaryKey => {roleId, permissionId};
}