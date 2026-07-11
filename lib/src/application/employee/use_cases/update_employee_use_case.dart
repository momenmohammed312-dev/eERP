import 'package:edu_erp/src/domain/employee/entities/employee_entity.dart';
import 'package:edu_erp/src/domain/employee/repositories/employee_repository.dart';

class UpdateEmployeeUseCase {
  final EmployeeRepository _repository;
  UpdateEmployeeUseCase(this._repository);

  Future<void> call(EmployeeEntity employee) => _repository.update(employee);
}
