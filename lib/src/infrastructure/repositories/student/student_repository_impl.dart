import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/student/entities/student_entity.dart';
import 'package:edu_erp/src/domain/student/repositories/student_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/student_dao.dart';

class StudentRepositoryImpl implements StudentRepository {
  final StudentDao _dao;
  StudentRepositoryImpl(this._dao);

  StudentEntity _toEntity(db.StudentData d) => StudentEntity(
        id: d.id,
        personId: d.personId,
        enrollmentDate: d.enrollmentDate,
        status: d.status,
        guardianId: d.guardianId,
        photoPath: d.photoPath,
      );

  @override
  Future<StudentEntity?> getById(int id) async {
    final data = await _dao.getById(id);
    return data != null ? _toEntity(data) : null;
  }

  @override
  Future<List<StudentEntity>> getAll() async =>
      (await _dao.getAll()).map(_toEntity).toList();

  @override
  Future<int> create(StudentEntity e) => _dao.insert(
        db.StudentCompanion.insert(
          personId: e.personId,
          enrollmentDate: Value(e.enrollmentDate),
          status: Value(e.status),
          guardianId: e.guardianId,
          photoPath: Value(e.photoPath),
        ),
      );

  @override
  Future<void> update(StudentEntity e) => _dao.update(
        e.id,
        db.StudentCompanion(
          personId: Value(e.personId),
          enrollmentDate: Value(e.enrollmentDate),
          status: Value(e.status),
          guardianId: Value(e.guardianId),
          photoPath: Value(e.photoPath),
        ),
      );

  @override
  Future<void> delete(int id) => _dao.delete(id);
}