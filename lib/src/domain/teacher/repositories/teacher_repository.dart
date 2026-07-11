import '../entities/teacher_entity.dart';

abstract class TeacherRepository {
  Future<TeacherEntity?> getById(int id);
  Future<List<TeacherEntity>> getAll();
  Future<int> create(TeacherEntity teacher);
  Future<void> update(TeacherEntity teacher);
  Future<void> delete(int id);
}