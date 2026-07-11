import 'package:edu_erp/src/domain/academic/entities/exam_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';

class CreateExamUseCase {
  final AcademicRepository _repo;
  CreateExamUseCase(this._repo);
  Future<int> call(ExamEntity e) => _repo.createExam(e);
}