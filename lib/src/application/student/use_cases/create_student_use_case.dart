import 'package:edu_erp/src/domain/student/entities/student_entity.dart';
import 'package:edu_erp/src/domain/student/repositories/student_repository.dart';

class CreateStudentUseCase {
  final StudentRepository _repository;
  CreateStudentUseCase(this._repository);

  Future<int> call(StudentEntity student) => _repository.create(student);
}
