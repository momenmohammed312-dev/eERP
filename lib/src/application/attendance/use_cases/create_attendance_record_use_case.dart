import 'package:edu_erp/src/domain/attendance/entities/attendance_record_entity.dart';
import 'package:edu_erp/src/domain/attendance/repositories/attendance_repository.dart';

class CreateAttendanceRecordUseCase {
  final AttendanceRepository _repo;
  CreateAttendanceRecordUseCase(this._repo);
  Future<int> call(AttendanceRecordEntity e) => _repo.create(e);
}