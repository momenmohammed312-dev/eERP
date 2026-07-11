import '../app_database.dart';

class CanteenDao {
  final AppDatabase db;
  CanteenDao(this.db);

  Future<int> insertSale(CanteenSaleCompanion data) =>
      db.into(db.canteenSale).insert(data);
  Future<CanteenSaleData?> getSaleById(int id) =>
      (db.select(db.canteenSale)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<CanteenSaleData>> getAllSales() =>
      db.select(db.canteenSale).get();
  Future<int> deleteSale(int id) =>
      (db.delete(db.canteenSale)..where((t) => t.id.equals(id))).go();
  Future<List<CanteenSaleData>> getSalesByStudent(int sid) =>
      (db.select(db.canteenSale)..where((t) => t.studentId.equals(sid))).get();
  Future<List<CanteenSaleData>> getSalesByDate(DateTime date) =>
      (db.select(db.canteenSale)..where((t) => t.saleDate.equals(date)))
          .get();
}