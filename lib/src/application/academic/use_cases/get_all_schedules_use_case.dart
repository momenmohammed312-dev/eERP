import 'package:edu_erp/src/domain/academic/entities/schedule_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';

class GetAllSchedulesUseCase {
  final AcademicRepository _repo;
  GetAllSchedulesUseCase(this._repo);
  Future<List<ScheduleEntity>> call() => _repo.getAllSchedules();
}