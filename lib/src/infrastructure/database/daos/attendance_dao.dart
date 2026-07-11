import '../app_database.dart';

class AttendanceDao {
  final AppDatabase db;
  AttendanceDao(this.db);

  Future<int> insertAttendance(AttendanceRecordCompanion data) =>
      db.into(db.attendanceRecord).insert(data);
  Future<AttendanceRecordData?> getById(int id) =>
      (db.select(db.attendanceRecord)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<AttendanceRecordData>> getAll() =>
      db.select(db.attendanceRecord).get();
  Future<int> update(int id, AttendanceRecordCompanion data) =>
      (db.update(db.attendanceRecord)..where((t) => t.id.equals(id))).write(data);
  Future<int> delete(int id) =>
      (db.delete(db.attendanceRecord)..where((t) => t.id.equals(id))).go();
  Future<List<AttendanceRecordData>> getByStudent(int sid) =>
      (db.select(db.attendanceRecord)..where((t) => t.studentId.equals(sid))).get();
  Future<List<AttendanceRecordData>> getByDate(DateTime date) =>
      (db.select(db.attendanceRecord)..where((t) => t.date.equals(date)))
          .get();
}