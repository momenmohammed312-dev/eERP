import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/teacher_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/teacher/teacher_repository_impl.dart';
import 'package:edu_erp/src/domain/teacher/repositories/teacher_repository.dart';
import 'package:edu_erp/src/application/teacher/use_cases/get_all_teachers_use_case.dart';
import 'package:edu_erp/src/application/teacher/use_cases/create_teacher_use_case.dart';
import 'package:edu_erp/src/application/teacher/use_cases/update_teacher_use_case.dart';
import 'package:edu_erp/src/application/teacher/use_cases/delete_teacher_use_case.dart';
import 'package:edu_erp/src/application/teacher/use_cases/get_teacher_by_id_use_case.dart';

final _teacherRepoProvider = Provider<TeacherRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return TeacherRepositoryImpl(TeacherDao(db));
});

final getAllTeachersUseCase = Provider<GetAllTeachersUseCase>((ref) {
  return GetAllTeachersUseCase(ref.read(_teacherRepoProvider));
});

final getTeacherByIdUseCase = Provider<GetTeacherByIdUseCase>((ref) {
  return GetTeacherByIdUseCase(ref.read(_teacherRepoProvider));
});

final createTeacherUseCase = Provider<CreateTeacherUseCase>((ref) {
  return CreateTeacherUseCase(ref.read(_teacherRepoProvider));
});

final updateTeacherUseCase = Provider<UpdateTeacherUseCase>((ref) {
  return UpdateTeacherUseCase(ref.read(_teacherRepoProvider));
});

final deleteTeacherUseCase = Provider<DeleteTeacherUseCase>((ref) {
  return DeleteTeacherUseCase(ref.read(_teacherRepoProvider));
});
