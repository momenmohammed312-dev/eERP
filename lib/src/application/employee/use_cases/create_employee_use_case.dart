import 'package:edu_erp/src/domain/employee/entities/employee_entity.dart';
import 'package:edu_erp/src/domain/employee/repositories/employee_repository.dart';

class CreateEmployeeUseCase {
  final EmployeeRepository _repository;
  CreateEmployeeUseCase(this._repository);

  Future<int> call(EmployeeEntity employee) => _repository.create(employee);
}
