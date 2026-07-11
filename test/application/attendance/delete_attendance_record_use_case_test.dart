import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/attendance/repositories/attendance_repository.dart';
import 'package:edu_erp/src/application/attendance/use_cases/delete_attendance_record_use_case.dart';

class MockAttendanceRepository extends Mock implements AttendanceRepository {}

void main() {
  late MockAttendanceRepository repository;
  late DeleteAttendanceRecordUseCase useCase;

  setUp(() {
    repository = MockAttendanceRepository();
    useCase = DeleteAttendanceRecordUseCase(repository);
  });

  test('calls repository.delete with correct id', () async {
    when(() => repository.delete(1)).thenAnswer((_) async {});
    await useCase(1);
    verify(() => repository.delete(1)).called(1);
  });

  test('propagates repository exceptions', () async {
    when(() => repository.delete(1)).thenThrow(Exception('Not found'));
    expect(() => useCase(1), throwsException);
  });
}