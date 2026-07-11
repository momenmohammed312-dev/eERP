import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/academic/entities/grade_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';
import 'package:edu_erp/src/application/academic/use_cases/create_grade_use_case.dart';

class MockAcademicRepository extends Mock implements AcademicRepository {}

void main() {
  late MockAcademicRepository repository;
  late CreateGradeUseCase useCase;

  setUp(() {
    repository = MockAcademicRepository();
    useCase = CreateGradeUseCase(repository);
  });

  test('calls repository.createGrade with correct entity', () async {
    final grade = const GradeEntity(
      id: 0,
      studentId: 1,
      examId: 1,
      subjectId: 1,
      score: 85,
    );
    when(() => repository.createGrade(grade)).thenAnswer((_) async => 1);
    await useCase(grade);
    verify(() => repository.createGrade(grade)).called(1);
  });

  test('returns the created grade id', () async {
    final grade = const GradeEntity(
      id: 0,
      studentId: 1,
      examId: 1,
      subjectId: 1,
      score: 85,
    );
    when(() => repository.createGrade(grade)).thenAnswer((_) async => 42);
    final result = await useCase(grade);
    expect(result, 42);
  });
}