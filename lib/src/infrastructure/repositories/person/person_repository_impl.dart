import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/person/entities/person_entity.dart';
import 'package:edu_erp/src/domain/person/repositories/person_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/person_dao.dart';

class PersonRepositoryImpl implements PersonRepository {
  final PersonDao _dao;
  PersonRepositoryImpl(this._dao);

  PersonEntity _toEntity(db.PersonData d) => PersonEntity(
        id: d.id,
        fullName: d.fullName,
        phone: d.phone,
        email: d.email,
        address: d.address,
        nationalId: d.nationalId,
        birthDate: d.birthDate,
        gender: d.gender,
        createdAt: d.createdAt,
      );

  @override
  Future<PersonEntity?> getById(int id) async {
    final data = await _dao.getById(id);
    return data != null ? _toEntity(data) : null;
  }

  @override
  Future<List<PersonEntity>> getAll() async =>
      (await _dao.getAll()).map(_toEntity).toList();

  @override
  Future<int> create(PersonEntity e) => _dao.insert(
        db.PersonCompanion.insert(
          fullName: e.fullName,
          phone: Value(e.phone),
          email: Value(e.email),
          address: Value(e.address),
          nationalId: Value(e.nationalId),
          birthDate: Value(e.birthDate),
          gender: Value(e.gender),
        ),
      );

  @override
  Future<void> update(PersonEntity e) => _dao.update(
        e.id,
        db.PersonCompanion(
          fullName: Value(e.fullName),
          phone: Value(e.phone),
          email: Value(e.email),
          address: Value(e.address),
          nationalId: Value(e.nationalId),
          birthDate: Value(e.birthDate),
          gender: Value(e.gender),
        ),
      );

  @override
  Future<void> delete(int id) => _dao.delete(id);
}