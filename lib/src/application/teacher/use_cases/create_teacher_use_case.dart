import 'package:edu_erp/src/domain/teacher/entities/teacher_entity.dart';
import 'package:edu_erp/src/domain/teacher/repositories/teacher_repository.dart';

class CreateTeacherUseCase {
  final TeacherRepository _repository;
  CreateTeacherUseCase(this._repository);

  Future<int> call(TeacherEntity teacher) => _repository.create(teacher);
}
