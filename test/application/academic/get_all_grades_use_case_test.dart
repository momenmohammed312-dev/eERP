import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/academic/entities/grade_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';
import 'package:edu_erp/src/application/academic/use_cases/get_all_grades_use_case.dart';

class MockAcademicRepository extends Mock implements AcademicRepository {}

void main() {
  late MockAcademicRepository repository;
  late GetAllGradesUseCase useCase;

  setUp(() {
    repository = MockAcademicRepository();
    useCase = GetAllGradesUseCase(repository);
  });

  test('calls repository.getAllGrades()', () async {
    when(() => repository.getAllGrades()).thenAnswer((_) async => []);
    await useCase();
    verify(() => repository.getAllGrades()).called(1);
  });

  test('returns the list from the repository', () async {
    final grades = [
      const GradeEntity(
        id: 1,
        studentId: 1,
        examId: 1,
        subjectId: 1,
        score: 85,
      ),
    ];
    when(() => repository.getAllGrades()).thenAnswer((_) async => grades);
    final result = await useCase();
    expect(result, grades);
  });
}