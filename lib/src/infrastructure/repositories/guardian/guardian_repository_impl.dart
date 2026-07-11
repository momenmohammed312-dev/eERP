import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/guardian/entities/guardian_entity.dart';
import 'package:edu_erp/src/domain/guardian/repositories/guardian_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/guardian_dao.dart';

class GuardianRepositoryImpl implements GuardianRepository {
  final GuardianDao _dao;
  GuardianRepositoryImpl(this._dao);

  GuardianEntity _toEntity(db.GuardianData d) => GuardianEntity(
        id: d.id,
        personId: d.personId,
        relationToStudent: d.relationToStudent,
        isPrimaryContact: d.isPrimaryContact,
      );

  @override
  Future<GuardianEntity?> getById(int id) async {
    final data = await _dao.getById(id);
    return data != null ? _toEntity(data) : null;
  }

  @override
  Future<List<GuardianEntity>> getAll() async =>
      (await _dao.getAll()).map(_toEntity).toList();

  @override
  Future<int> create(GuardianEntity e) => _dao.insert(
        db.GuardianCompanion.insert(
          personId: e.personId,
          relationToStudent: Value(e.relationToStudent),
          isPrimaryContact: Value(e.isPrimaryContact),
        ),
      );

  @override
  Future<void> update(GuardianEntity e) => _dao.update(
        e.id,
        db.GuardianCompanion(
          personId: Value(e.personId),
          relationToStudent: Value(e.relationToStudent),
          isPrimaryContact: Value(e.isPrimaryContact),
        ),
      );

  @override
  Future<void> delete(int id) => _dao.delete(id);
}