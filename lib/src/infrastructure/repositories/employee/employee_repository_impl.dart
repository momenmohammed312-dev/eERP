import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/employee/entities/employee_entity.dart';
import 'package:edu_erp/src/domain/employee/repositories/employee_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/employee_dao.dart';

class EmployeeRepositoryImpl implements EmployeeRepository {
  final EmployeeDao _dao;
  EmployeeRepositoryImpl(this._dao);

  EmployeeEntity _toEntity(db.EmployeeData d) => EmployeeEntity(
        id: d.id,
        personId: d.personId,
        jobTitle: d.jobTitle,
        hireDate: d.hireDate,
        status: d.status,
      );

  @override
  Future<EmployeeEntity?> getById(int id) async {
    final data = await _dao.getById(id);
    return data != null ? _toEntity(data) : null;
  }

  @override
  Future<List<EmployeeEntity>> getAll() async =>
      (await _dao.getAll()).map(_toEntity).toList();

  @override
  Future<int> create(EmployeeEntity e) => _dao.insert(
        db.EmployeeCompanion.insert(
          personId: e.personId,
          jobTitle: Value(e.jobTitle),
          hireDate: Value(e.hireDate),
          status: Value(e.status),
        ),
      );

  @override
  Future<void> update(EmployeeEntity e) => _dao.update(
        e.id,
        db.EmployeeCompanion(
          personId: Value(e.personId),
          jobTitle: Value(e.jobTitle),
          hireDate: Value(e.hireDate),
          status: Value(e.status),
        ),
      );

  @override
  Future<void> delete(int id) => _dao.delete(id);
}