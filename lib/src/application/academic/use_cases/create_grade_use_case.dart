import 'package:edu_erp/src/domain/academic/entities/grade_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';

class CreateGradeUseCase {
  final AcademicRepository _repo;
  CreateGradeUseCase(this._repo);
  Future<int> call(GradeEntity e) => _repo.createGrade(e);
}