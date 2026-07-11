import '../entities/student_entity.dart';

abstract class StudentRepository {
  Future<StudentEntity?> getById(int id);
  Future<List<StudentEntity>> getAll();
  Future<int> create(StudentEntity student);
  Future<void> update(StudentEntity student);
  Future<void> delete(int id);
}