import 'package:edu_erp/src/domain/academic/entities/grade_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';

class GetAllGradesUseCase {
  final AcademicRepository _repo;
  GetAllGradesUseCase(this._repo);
  Future<List<GradeEntity>> call() => _repo.getAllGrades();
}