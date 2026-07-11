import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/attendance/entities/attendance_record_entity.dart';
import 'package:edu_erp/src/domain/attendance/repositories/attendance_repository.dart';
import 'package:edu_erp/src/application/attendance/use_cases/create_attendance_record_use_case.dart';

class MockAttendanceRepository extends Mock implements AttendanceRepository {}

void main() {
  late MockAttendanceRepository repository;
  late CreateAttendanceRecordUseCase useCase;

  setUp(() {
    repository = MockAttendanceRepository();
    useCase = CreateAttendanceRecordUseCase(repository);
  });

  test('calls repository.create with correct entity', () async {
    final record = AttendanceRecordEntity(
      id: 0,
      studentId: 1,
      date: DateTime(2024, 1, 1),
      status: 'present',
      recordedBy: 1,
    );
    when(() => repository.create(record)).thenAnswer((_) async => 1);
    await useCase(record);
    verify(() => repository.create(record)).called(1);
  });

  test('returns the created record id', () async {
    final record = AttendanceRecordEntity(
      id: 0,
      studentId: 1,
      date: DateTime(2024, 1, 1),
      status: 'present',
      recordedBy: 1,
    );
    when(() => repository.create(record)).thenAnswer((_) async => 42);
    final result = await useCase(record);
    expect(result, 42);
  });
}