import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:edu_erp/src/infrastructure/providers/database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/academic_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/academic/academic_repository_impl.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';
import 'package:edu_erp/src/application/academic/use_cases/create_subject_use_case.dart';
import 'package:edu_erp/src/application/academic/use_cases/get_all_subjects_use_case.dart';
import 'package:edu_erp/src/application/academic/use_cases/create_classroom_use_case.dart';
import 'package:edu_erp/src/application/academic/use_cases/get_all_classrooms_use_case.dart';
import 'package:edu_erp/src/application/academic/use_cases/create_schedule_use_case.dart';
import 'package:edu_erp/src/application/academic/use_cases/get_all_schedules_use_case.dart';
import 'package:edu_erp/src/application/academic/use_cases/create_exam_use_case.dart';
import 'package:edu_erp/src/application/academic/use_cases/get_all_exams_use_case.dart';
import 'package:edu_erp/src/application/academic/use_cases/create_grade_use_case.dart';
import 'package:edu_erp/src/application/academic/use_cases/get_all_grades_use_case.dart';
import 'package:edu_erp/src/application/academic/use_cases/create_section_assignment_use_case.dart';
import 'package:edu_erp/src/application/academic/use_cases/get_all_section_assignments_use_case.dart';

final _academicRepoProvider = Provider<AcademicRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return AcademicRepositoryImpl(AcademicDao(db));
});

final getAllSubjectsUseCase = Provider<GetAllSubjectsUseCase>((ref) {
  return GetAllSubjectsUseCase(ref.read(_academicRepoProvider));
});
final createSubjectUseCase = Provider<CreateSubjectUseCase>((ref) {
  return CreateSubjectUseCase(ref.read(_academicRepoProvider));
});
final getAllClassroomsUseCase = Provider<GetAllClassroomsUseCase>((ref) {
  return GetAllClassroomsUseCase(ref.read(_academicRepoProvider));
});
final createClassroomUseCase = Provider<CreateClassroomUseCase>((ref) {
  return CreateClassroomUseCase(ref.read(_academicRepoProvider));
});
final getAllSchedulesUseCase = Provider<GetAllSchedulesUseCase>((ref) {
  return GetAllSchedulesUseCase(ref.read(_academicRepoProvider));
});
final createScheduleUseCase = Provider<CreateScheduleUseCase>((ref) {
  return CreateScheduleUseCase(ref.read(_academicRepoProvider));
});
final getAllExamsUseCase = Provider<GetAllExamsUseCase>((ref) {
  return GetAllExamsUseCase(ref.read(_academicRepoProvider));
});
final createExamUseCase = Provider<CreateExamUseCase>((ref) {
  return CreateExamUseCase(ref.read(_academicRepoProvider));
});
final getAllGradesUseCase = Provider<GetAllGradesUseCase>((ref) {
  return GetAllGradesUseCase(ref.read(_academicRepoProvider));
});
final createGradeUseCase = Provider<CreateGradeUseCase>((ref) {
  return CreateGradeUseCase(ref.read(_academicRepoProvider));
});
final getAllSectionAssignmentsUseCase = Provider<GetAllSectionAssignmentsUseCase>((ref) {
  return GetAllSectionAssignmentsUseCase(ref.read(_academicRepoProvider));
});
final createSectionAssignmentUseCase = Provider<CreateSectionAssignmentUseCase>((ref) {
  return CreateSectionAssignmentUseCase(ref.read(_academicRepoProvider));
});
