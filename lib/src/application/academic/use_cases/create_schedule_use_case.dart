import 'package:edu_erp/src/domain/academic/entities/schedule_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';

class CreateScheduleUseCase {
  final AcademicRepository _repo;
  CreateScheduleUseCase(this._repo);
  Future<int> call(ScheduleEntity e) => _repo.createSchedule(e);
}