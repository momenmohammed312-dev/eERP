import '../entities/attendance_record_entity.dart';

abstract class AttendanceRepository {
  Future<AttendanceRecordEntity?> getById(int id);
  Future<List<AttendanceRecordEntity>> getAll();
  Future<int> create(AttendanceRecordEntity entity);
  Future<void> update(AttendanceRecordEntity entity);
  Future<void> delete(int id);
  Future<List<AttendanceRecordEntity>> getByStudentId(int studentId);
  Future<List<AttendanceRecordEntity>> getByDate(DateTime date);
}