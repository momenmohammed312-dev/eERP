import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/academic/entities/section_assignment_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';
import 'package:edu_erp/src/application/academic/use_cases/create_section_assignment_use_case.dart';

class MockAcademicRepository extends Mock implements AcademicRepository {}

void main() {
  late MockAcademicRepository repository;
  late CreateSectionAssignmentUseCase useCase;

  setUp(() {
    repository = MockAcademicRepository();
    useCase = CreateSectionAssignmentUseCase(repository);
  });

  test('calls repository.createSectionAssignment with correct entity', () async {
    const assignment = SectionAssignmentEntity(
      id: 0,
      studentId: 1,
      classroomId: 1,
    );
    when(() => repository.createSectionAssignment(assignment))
        .thenAnswer((_) async => 1);
    await useCase(assignment);
    verify(() => repository.createSectionAssignment(assignment)).called(1);
  });

  test('returns the created assignment id', () async {
    const assignment = SectionAssignmentEntity(
      id: 0,
      studentId: 1,
      classroomId: 1,
    );
    when(() => repository.createSectionAssignment(assignment))
        .thenAnswer((_) async => 42);
    final result = await useCase(assignment);
    expect(result, 42);
  });
}