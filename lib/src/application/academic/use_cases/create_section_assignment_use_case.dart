import 'package:edu_erp/src/domain/academic/entities/section_assignment_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';

class CreateSectionAssignmentUseCase {
  final AcademicRepository _repo;
  CreateSectionAssignmentUseCase(this._repo);
  Future<int> call(SectionAssignmentEntity e) => _repo.createSectionAssignment(e);
}