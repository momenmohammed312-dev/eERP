import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/teacher/entities/teacher_entity.dart';
import 'package:edu_erp/src/domain/teacher/repositories/teacher_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/teacher_dao.dart';

class TeacherRepositoryImpl implements TeacherRepository {
  final TeacherDao _dao;
  TeacherRepositoryImpl(this._dao);

  TeacherEntity _toEntity(db.TeacherData d) => TeacherEntity(
        id: d.id,
        personId: d.personId,
        specialization: d.specialization,
        hireDate: d.hireDate,
        status: d.status,
      );

  @override
  Future<TeacherEntity?> getById(int id) async {
    final data = await _dao.getById(id);
    return data != null ? _toEntity(data) : null;
  }

  @override
  Future<List<TeacherEntity>> getAll() async =>
      (await _dao.getAll()).map(_toEntity).toList();

  @override
  Future<int> create(TeacherEntity e) => _dao.insert(
        db.TeacherCompanion.insert(
          personId: e.personId,
          specialization: Value(e.specialization),
          hireDate: Value(e.hireDate),
          status: Value(e.status),
        ),
      );

  @override
  Future<void> update(TeacherEntity e) => _dao.update(
        e.id,
        db.TeacherCompanion(
          personId: Value(e.personId),
          specialization: Value(e.specialization),
          hireDate: Value(e.hireDate),
          status: Value(e.status),
        ),
      );

  @override
  Future<void> delete(int id) => _dao.delete(id);
}