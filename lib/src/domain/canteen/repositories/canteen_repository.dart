import '../entities/canteen_sale_entity.dart';

abstract class CanteenRepository {
  Future<CanteenSaleEntity?> getSaleById(int id);
  Future<List<CanteenSaleEntity>> getAllSales();
  Future<int> createSale(CanteenSaleEntity entity);
  Future<void> deleteSale(int id);
  Future<List<CanteenSaleEntity>> getSalesByStudent(int studentId);
  Future<List<CanteenSaleEntity>> getSalesByDate(DateTime date);
}