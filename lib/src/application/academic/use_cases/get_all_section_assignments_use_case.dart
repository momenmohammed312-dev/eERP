import 'package:edu_erp/src/domain/academic/entities/section_assignment_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';

class GetAllSectionAssignmentsUseCase {
  final AcademicRepository _repo;
  GetAllSectionAssignmentsUseCase(this._repo);
  Future<List<SectionAssignmentEntity>> call() => _repo.getAllSectionAssignments();
}