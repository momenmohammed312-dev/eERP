import 'package:edu_erp/src/domain/employee/repositories/employee_repository.dart';

class DeleteEmployeeUseCase {
  final EmployeeRepository _repository;
  DeleteEmployeeUseCase(this._repository);

  Future<void> call(int id) => _repository.delete(id);
}
