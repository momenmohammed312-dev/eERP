import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/employee_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/employee/employee_repository_impl.dart';
import 'package:edu_erp/src/domain/employee/repositories/employee_repository.dart';
import 'package:edu_erp/src/application/employee/use_cases/create_employee_use_case.dart';
import 'package:edu_erp/src/application/employee/use_cases/get_all_employees_use_case.dart';
import 'package:edu_erp/src/application/employee/use_cases/get_employee_by_id_use_case.dart';
import 'package:edu_erp/src/application/employee/use_cases/update_employee_use_case.dart';
import 'package:edu_erp/src/application/employee/use_cases/delete_employee_use_case.dart';

final _employeeRepoProvider = Provider<EmployeeRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return EmployeeRepositoryImpl(EmployeeDao(db));
});

final getAllEmployeesUseCase = Provider<GetAllEmployeesUseCase>((ref) {
  return GetAllEmployeesUseCase(ref.read(_employeeRepoProvider));
});

final getEmployeeByIdUseCase = Provider<GetEmployeeByIdUseCase>((ref) {
  return GetEmployeeByIdUseCase(ref.read(_employeeRepoProvider));
});

final createEmployeeUseCase = Provider<CreateEmployeeUseCase>((ref) {
  return CreateEmployeeUseCase(ref.read(_employeeRepoProvider));
});

final updateEmployeeUseCase = Provider<UpdateEmployeeUseCase>((ref) {
  return UpdateEmployeeUseCase(ref.read(_employeeRepoProvider));
});

final deleteEmployeeUseCase = Provider<DeleteEmployeeUseCase>((ref) {
  return DeleteEmployeeUseCase(ref.read(_employeeRepoProvider));
});
