import 'package:edu_erp/src/domain/teacher/entities/teacher_entity.dart';
import 'package:edu_erp/src/domain/teacher/repositories/teacher_repository.dart';

class GetTeacherByIdUseCase {
  final TeacherRepository _repository;
  GetTeacherByIdUseCase(this._repository);

  Future<TeacherEntity?> call(int id) => _repository.getById(id);
}