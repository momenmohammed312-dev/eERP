import '../app_database.dart';

class InventoryDao {
  final AppDatabase db;
  InventoryDao(this.db);

  Future<int> insertItem(InventoryItemCompanion data) =>
      db.into(db.inventoryItem).insert(data);
  Future<InventoryItemData?> getItemById(int id) =>
      (db.select(db.inventoryItem)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<InventoryItemData>> getAllItems() =>
      db.select(db.inventoryItem).get();
  Future<int> updateItem(int id, InventoryItemCompanion data) =>
      (db.update(db.inventoryItem)..where((t) => t.id.equals(id))).write(data);
  Future<int> deleteItem(int id) =>
      (db.delete(db.inventoryItem)..where((t) => t.id.equals(id))).go();

  Future<int> insertPurchaseOrder(PurchaseOrderCompanion data) =>
      db.into(db.purchaseOrder).insert(data);
  Future<PurchaseOrderData?> getPurchaseOrderById(int id) =>
      (db.select(db.purchaseOrder)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<PurchaseOrderData>> getAllPurchaseOrders() =>
      db.select(db.purchaseOrder).get();

  Future<int> insertSupplier(SupplierCompanion data) =>
      db.into(db.supplier).insert(data);
  Future<SupplierData?> getSupplierById(int id) =>
      (db.select(db.supplier)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<SupplierData>> getAllSuppliers() =>
      db.select(db.supplier).get();
  Future<int> updateSupplier(int id, SupplierCompanion data) =>
      (db.update(db.supplier)..where((t) => t.id.equals(id))).write(data);
  Future<int> deleteSupplier(int id) =>
      (db.delete(db.supplier)..where((t) => t.id.equals(id))).go();
}