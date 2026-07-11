import 'package:edu_erp/src/domain/teacher/repositories/teacher_repository.dart';

class DeleteTeacherUseCase {
  final TeacherRepository _repository;
  DeleteTeacherUseCase(this._repository);

  Future<void> call(int id) => _repository.delete(id);
}
