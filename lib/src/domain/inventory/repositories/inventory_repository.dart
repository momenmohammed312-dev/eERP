import '../entities/inventory_item_entity.dart';
import '../entities/purchase_order_entity.dart';
import '../entities/supplier_entity.dart';

abstract class InventoryRepository {
  Future<InventoryItemEntity?> getItemById(int id);
  Future<List<InventoryItemEntity>> getAllItems();
  Future<int> createItem(InventoryItemEntity entity);
  Future<void> updateItem(InventoryItemEntity entity);
  Future<void> deleteItem(int id);

  Future<PurchaseOrderEntity?> getPurchaseOrderById(int id);
  Future<List<PurchaseOrderEntity>> getAllPurchaseOrders();
  Future<int> createPurchaseOrder(PurchaseOrderEntity entity);

  Future<SupplierEntity?> getSupplierById(int id);
  Future<List<SupplierEntity>> getAllSuppliers();
  Future<int> createSupplier(SupplierEntity entity);
  Future<void> updateSupplier(SupplierEntity entity);
  Future<void> deleteSupplier(int id);
}