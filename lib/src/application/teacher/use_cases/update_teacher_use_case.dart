import 'package:edu_erp/src/domain/teacher/entities/teacher_entity.dart';
import 'package:edu_erp/src/domain/teacher/repositories/teacher_repository.dart';

class UpdateTeacherUseCase {
  final TeacherRepository _repository;
  UpdateTeacherUseCase(this._repository);

  Future<void> call(TeacherEntity teacher) => _repository.update(teacher);
}
