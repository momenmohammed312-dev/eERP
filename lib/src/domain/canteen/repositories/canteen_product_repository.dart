import '../entities/canteen_product_entity.dart';

abstract class CanteenProductRepository {
  Future<CanteenProductEntity?> getById(int id);
  Future<List<CanteenProductEntity>> getAll();
  Future<int> create(CanteenProductEntity entity);
  Future<void> update(CanteenProductEntity entity);
  Future<void> delete(int id);
}
