import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/student/entities/student_entity.dart';
import '../../domain/teacher/entities/teacher_entity.dart';
import '../../domain/finance/entities/receipt_entity.dart';
import '../../domain/attendance/entities/attendance_record_entity.dart';
import '../../domain/person/entities/person_entity.dart';
import 'package:edu_erp/src/infrastructure/providers/student_providers.dart';
import 'package:edu_erp/src/infrastructure/providers/teacher_providers.dart';
import 'package:edu_erp/src/infrastructure/providers/person_providers.dart';
import 'package:edu_erp/src/infrastructure/providers/finance_providers.dart';
import 'package:edu_erp/src/infrastructure/providers/attendance_providers.dart';

class DashboardData {
  final List<StudentEntity> students;
  final List<TeacherEntity> teachers;
  final List<ReceiptEntity> receipts;
  final List<AttendanceRecordEntity> attendance;
  final Map<int, String> personNames;

  const DashboardData({
    required this.students,
    required this.teachers,
    required this.receipts,
    required this.attendance,
    required this.personNames,
  });
}

final dashboardDataProvider = FutureProvider<DashboardData>((ref) async {
  final results = await Future.wait([
    ref.read(getAllStudentsUseCase)(),
    ref.read(getAllTeachersUseCase)(),
    ref.read(getAllReceiptsUseCase)(),
    ref.read(getAllAttendanceRecordsUseCase)(),
    ref.read(getAllPersonsUseCase)(),
  ]);
  final students = results[0] as List<StudentEntity>;
  final teachers = results[1] as List<TeacherEntity>;
  final receipts = results[2] as List<ReceiptEntity>;
  final attendance = results[3] as List<AttendanceRecordEntity>;
  final persons = results[4] as List<PersonEntity>;
  final names = {for (final p in persons) p.id: p.fullName};
  return DashboardData(
    students: students,
    teachers: teachers,
    receipts: receipts,
    attendance: attendance,
    personNames: names,
  );
});
