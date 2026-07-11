import 'package:edu_erp/src/domain/academic/entities/classroom_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';

class GetAllClassroomsUseCase {
  final AcademicRepository _repo;
  GetAllClassroomsUseCase(this._repo);
  Future<List<ClassroomEntity>> call() => _repo.getAllClassrooms();
}