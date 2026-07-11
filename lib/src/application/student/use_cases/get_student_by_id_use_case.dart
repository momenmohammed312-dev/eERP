import 'package:edu_erp/src/domain/student/entities/student_entity.dart';
import 'package:edu_erp/src/domain/student/repositories/student_repository.dart';

class GetStudentByIdUseCase {
  final StudentRepository _repository;
  GetStudentByIdUseCase(this._repository);

  Future<StudentEntity?> call(int id) => _repository.getById(id);
}