import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/attendance/entities/attendance_record_entity.dart';
import 'package:edu_erp/src/domain/attendance/repositories/attendance_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/attendance_dao.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  final AttendanceDao _dao;
  AttendanceRepositoryImpl(this._dao);

  AttendanceRecordEntity _toEntity(db.AttendanceRecordData d) =>
      AttendanceRecordEntity(
        id: d.id,
        studentId: d.studentId,
        date: d.date,
        status: d.status,
        checkInTime: d.checkInTime,
        checkOutTime: d.checkOutTime,
        notes: d.notes,
        recordedBy: d.recordedBy,
      );

  @override
  Future<AttendanceRecordEntity?> getById(int id) async {
    final data = await _dao.getById(id);
    return data != null ? _toEntity(data) : null;
  }

  @override
  Future<List<AttendanceRecordEntity>> getAll() async =>
      (await _dao.getAll()).map(_toEntity).toList();

  @override
  Future<int> create(AttendanceRecordEntity e) => _dao.insertAttendance(
        db.AttendanceRecordCompanion.insert(
          studentId: e.studentId,
          date: e.date,
          status: e.status,
          checkInTime: Value(e.checkInTime),
          checkOutTime: Value(e.checkOutTime),
          notes: Value(e.notes),
          recordedBy: e.recordedBy,
        ),
      );

  @override
  Future<void> update(AttendanceRecordEntity e) => _dao.update(
        e.id,
        db.AttendanceRecordCompanion(
          studentId: Value(e.studentId),
          date: Value(e.date),
          status: Value(e.status),
          checkInTime: Value(e.checkInTime),
          checkOutTime: Value(e.checkOutTime),
          notes: Value(e.notes),
          recordedBy: Value(e.recordedBy),
        ),
      );

  @override
  Future<void> delete(int id) => _dao.delete(id);

  @override
  Future<List<AttendanceRecordEntity>> getByStudentId(int sid) async =>
      (await _dao.getByStudent(sid)).map(_toEntity).toList();

  @override
  Future<List<AttendanceRecordEntity>> getByDate(DateTime date) async =>
      (await _dao.getByDate(date)).map(_toEntity).toList();
}