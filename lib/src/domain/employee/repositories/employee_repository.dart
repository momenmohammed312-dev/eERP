import '../entities/employee_entity.dart';

abstract class EmployeeRepository {
  Future<EmployeeEntity?> getById(int id);
  Future<List<EmployeeEntity>> getAll();
  Future<int> create(EmployeeEntity employee);
  Future<void> update(EmployeeEntity employee);
  Future<void> delete(int id);
}