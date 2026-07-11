import 'package:edu_erp/src/domain/academic/entities/exam_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';

class GetAllExamsUseCase {
  final AcademicRepository _repo;
  GetAllExamsUseCase(this._repo);
  Future<List<ExamEntity>> call() => _repo.getAllExams();
}