import 'package:edu_erp/src/domain/academic/entities/subject_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';

class GetAllSubjectsUseCase {
  final AcademicRepository _repo;
  GetAllSubjectsUseCase(this._repo);
  Future<List<SubjectEntity>> call() => _repo.getAllSubjects();
}