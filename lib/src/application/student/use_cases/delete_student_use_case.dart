import 'package:edu_erp/src/domain/student/repositories/student_repository.dart';

class DeleteStudentUseCase {
  final StudentRepository _repository;
  DeleteStudentUseCase(this._repository);

  Future<void> call(int id) => _repository.delete(id);
}
