import 'package:edu_erp/src/domain/employee/entities/employee_entity.dart';
import 'package:edu_erp/src/domain/employee/repositories/employee_repository.dart';

class GetAllEmployeesUseCase {
  final EmployeeRepository _repository;
  GetAllEmployeesUseCase(this._repository);

  Future<List<EmployeeEntity>> call() => _repository.getAll();
}
