import 'package:edu_erp/src/domain/employee/entities/employee_entity.dart';
import 'package:edu_erp/src/domain/employee/repositories/employee_repository.dart';

class GetEmployeeByIdUseCase {
  final EmployeeRepository _repository;
  GetEmployeeByIdUseCase(this._repository);

  Future<EmployeeEntity?> call(int id) => _repository.getById(id);
}