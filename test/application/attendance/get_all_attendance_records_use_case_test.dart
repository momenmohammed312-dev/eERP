import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/attendance/entities/attendance_record_entity.dart';
import 'package:edu_erp/src/domain/attendance/repositories/attendance_repository.dart';
import 'package:edu_erp/src/application/attendance/use_cases/get_all_attendance_records_use_case.dart';

class MockAttendanceRepository extends Mock implements AttendanceRepository {}

void main() {
  late MockAttendanceRepository repository;
  late GetAllAttendanceRecordsUseCase useCase;

  setUp(() {
    repository = MockAttendanceRepository();
    useCase = GetAllAttendanceRecordsUseCase(repository);
  });

  test('calls repository.getAll()', () async {
    when(() => repository.getAll()).thenAnswer((_) async => []);
    await useCase();
    verify(() => repository.getAll()).called(1);
  });

  test('returns the list from the repository', () async {
    final records = [
      AttendanceRecordEntity(
        id: 1,
        studentId: 1,
        date: DateTime(2024, 1, 1),
        status: 'present',
        recordedBy: 1,
      ),
    ];
    when(() => repository.getAll()).thenAnswer((_) async => records);
    final result = await useCase();
    expect(result, records);
  });
}