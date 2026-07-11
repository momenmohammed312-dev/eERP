import '../app_database.dart';

class CanteenProductDao {
  final AppDatabase db;
  CanteenProductDao(this.db);

  Future<int> insert(CanteenProductCompanion data) =>
      db.into(db.canteenProduct).insert(data);
  Future<CanteenProductData?> getById(int id) =>
      (db.select(db.canteenProduct)..where((t) => t.id.equals(id)))
          .getSingleOrNull();
  Future<List<CanteenProductData>> getAll() =>
      db.select(db.canteenProduct).get();
  Future<int> update(CanteenProductCompanion data) =>
      (db.update(db.canteenProduct)..where((t) => t.id.equals(data.id.value)))
          .write(data);
  Future<int> delete(int id) =>
      (db.delete(db.canteenProduct)..where((t) => t.id.equals(id))).go();
}
