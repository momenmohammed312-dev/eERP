import 'package:edu_erp/src/domain/attendance/entities/attendance_record_entity.dart';
import 'package:edu_erp/src/domain/attendance/repositories/attendance_repository.dart';

class GetAllAttendanceRecordsUseCase {
  final AttendanceRepository _repo;
  GetAllAttendanceRecordsUseCase(this._repo);
  Future<List<AttendanceRecordEntity>> call() => _repo.getAll();
}