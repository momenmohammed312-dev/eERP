import 'package:edu_erp/src/domain/academic/entities/classroom_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';

class CreateClassroomUseCase {
  final AcademicRepository _repo;
  CreateClassroomUseCase(this._repo);
  Future<int> call(ClassroomEntity e) => _repo.createClassroom(e);
}