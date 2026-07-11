import 'package:edu_erp/src/domain/teacher/entities/teacher_entity.dart';
import 'package:edu_erp/src/domain/teacher/repositories/teacher_repository.dart';

class GetAllTeachersUseCase {
  final TeacherRepository _repository;
  GetAllTeachersUseCase(this._repository);

  Future<List<TeacherEntity>> call() => _repository.getAll();
}
