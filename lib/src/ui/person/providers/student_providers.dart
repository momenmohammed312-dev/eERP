import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/student_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/student/student_repository_impl.dart';
import 'package:edu_erp/src/domain/student/repositories/student_repository.dart';
import 'package:edu_erp/src/application/student/use_cases/create_student_use_case.dart';
import 'package:edu_erp/src/application/student/use_cases/get_all_students_use_case.dart';
import 'package:edu_erp/src/application/student/use_cases/get_student_by_id_use_case.dart';
import 'package:edu_erp/src/application/student/use_cases/update_student_use_case.dart';
import 'package:edu_erp/src/application/student/use_cases/delete_student_use_case.dart';

final _studentRepoProvider = Provider<StudentRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return StudentRepositoryImpl(StudentDao(db));
});

final getAllStudentsUseCase = Provider<GetAllStudentsUseCase>((ref) {
  return GetAllStudentsUseCase(ref.read(_studentRepoProvider));
});

final getStudentByIdUseCase = Provider<GetStudentByIdUseCase>((ref) {
  return GetStudentByIdUseCase(ref.read(_studentRepoProvider));
});

final createStudentUseCase = Provider<CreateStudentUseCase>((ref) {
  return CreateStudentUseCase(ref.read(_studentRepoProvider));
});

final updateStudentUseCase = Provider<UpdateStudentUseCase>((ref) {
  return UpdateStudentUseCase(ref.read(_studentRepoProvider));
});

final deleteStudentUseCase = Provider<DeleteStudentUseCase>((ref) {
  return DeleteStudentUseCase(ref.read(_studentRepoProvider));
});