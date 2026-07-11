import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:edu_erp/src/infrastructure/providers/database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/attendance_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/attendance/attendance_repository_impl.dart';
import 'package:edu_erp/src/domain/attendance/repositories/attendance_repository.dart';
import 'package:edu_erp/src/application/attendance/use_cases/create_attendance_record_use_case.dart';
import 'package:edu_erp/src/application/attendance/use_cases/get_all_attendance_records_use_case.dart';
import 'package:edu_erp/src/application/attendance/use_cases/delete_attendance_record_use_case.dart';

final _attendanceRepoProvider = Provider<AttendanceRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return AttendanceRepositoryImpl(AttendanceDao(db));
});

final getAllAttendanceRecordsUseCase = Provider<GetAllAttendanceRecordsUseCase>((ref) {
  return GetAllAttendanceRecordsUseCase(ref.read(_attendanceRepoProvider));
});

final createAttendanceRecordUseCase = Provider<CreateAttendanceRecordUseCase>((ref) {
  return CreateAttendanceRecordUseCase(ref.read(_attendanceRepoProvider));
});

final deleteAttendanceRecordUseCase = Provider<DeleteAttendanceRecordUseCase>((ref) {
  return DeleteAttendanceRecordUseCase(ref.read(_attendanceRepoProvider));
});
