import '../entities/guardian_entity.dart';

abstract class GuardianRepository {
  Future<GuardianEntity?> getById(int id);
  Future<List<GuardianEntity>> getAll();
  Future<int> create(GuardianEntity guardian);
  Future<void> update(GuardianEntity guardian);
  Future<void> delete(int id);
}