import 'package:edu_erp/src/domain/academic/entities/subject_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';

class CreateSubjectUseCase {
  final AcademicRepository _repo;
  CreateSubjectUseCase(this._repo);
  Future<int> call(SubjectEntity e) => _repo.createSubject(e);
}