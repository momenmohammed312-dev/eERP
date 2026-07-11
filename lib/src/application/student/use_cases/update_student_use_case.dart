import 'package:edu_erp/src/domain/student/entities/student_entity.dart';
import 'package:edu_erp/src/domain/student/repositories/student_repository.dart';

class UpdateStudentUseCase {
  final StudentRepository _repository;
  UpdateStudentUseCase(this._repository);

  Future<void> call(StudentEntity student) => _repository.update(student);
}
