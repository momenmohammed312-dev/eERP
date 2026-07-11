import 'package:edu_erp/src/domain/attendance/repositories/attendance_repository.dart';

class DeleteAttendanceRecordUseCase {
  final AttendanceRepository _repo;
  DeleteAttendanceRecordUseCase(this._repo);
  Future<void> call(int id) => _repo.delete(id);
}