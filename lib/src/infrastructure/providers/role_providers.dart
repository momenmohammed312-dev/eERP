import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/role_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/role/role_repository_impl.dart';
import 'package:edu_erp/src/domain/role/repositories/role_repository.dart';
import 'package:edu_erp/src/application/role/use_cases/create_role_use_case.dart';
import 'package:edu_erp/src/application/role/use_cases/get_all_roles_use_case.dart';
import 'package:edu_erp/src/application/role/use_cases/get_role_by_id_use_case.dart';
import 'package:edu_erp/src/application/role/use_cases/update_role_use_case.dart';
import 'package:edu_erp/src/application/role/use_cases/delete_role_use_case.dart';
import 'package:edu_erp/src/application/role/use_cases/assign_permission_use_case.dart';
import 'package:edu_erp/src/application/role/use_cases/remove_permission_use_case.dart';
import 'package:edu_erp/src/application/role/use_cases/get_permissions_for_role_use_case.dart';

final _roleRepoProvider = Provider<RoleRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return RoleRepositoryImpl(RoleDao(db));
});

final getAllRolesUseCase = Provider<GetAllRolesUseCase>((ref) {
  return GetAllRolesUseCase(ref.read(_roleRepoProvider));
});

final getRoleByIdUseCase = Provider<GetRoleByIdUseCase>((ref) {
  return GetRoleByIdUseCase(ref.read(_roleRepoProvider));
});

final createRoleUseCase = Provider<CreateRoleUseCase>((ref) {
  return CreateRoleUseCase(ref.read(_roleRepoProvider));
});

final updateRoleUseCase = Provider<UpdateRoleUseCase>((ref) {
  return UpdateRoleUseCase(ref.read(_roleRepoProvider));
});

final deleteRoleUseCase = Provider<DeleteRoleUseCase>((ref) {
  return DeleteRoleUseCase(ref.read(_roleRepoProvider));
});

final assignPermissionUseCase = Provider<AssignPermissionUseCase>((ref) {
  return AssignPermissionUseCase(ref.read(_roleRepoProvider));
});

final removePermissionUseCase = Provider<RemovePermissionUseCase>((ref) {
  return RemovePermissionUseCase(ref.read(_roleRepoProvider));
});

final getPermissionsForRoleUseCase = Provider<GetPermissionsForRoleUseCase>((ref) {
  return GetPermissionsForRoleUseCase(ref.read(_roleRepoProvider));
});
