import 'package:edu_erp/src/domain/student/entities/student_entity.dart';
import 'package:edu_erp/src/domain/student/repositories/student_repository.dart';

class GetAllStudentsUseCase {
  final StudentRepository _repository;
  GetAllStudentsUseCase(this._repository);

  Future<List<StudentEntity>> call() => _repository.getAll();
}
