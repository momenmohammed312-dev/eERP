import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/inventory/entities/inventory_item_entity.dart';
import 'package:edu_erp/src/domain/inventory/entities/purchase_order_entity.dart';
import 'package:edu_erp/src/domain/inventory/entities/supplier_entity.dart';
import 'package:edu_erp/src/domain/inventory/repositories/inventory_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/inventory_dao.dart';

class InventoryRepositoryImpl implements InventoryRepository {
  final InventoryDao _dao;
  InventoryRepositoryImpl(this._dao);

  InventoryItemEntity _i(db.InventoryItemData d) => InventoryItemEntity(
      id: d.id, name: d.name, sku: d.sku, quantity: d.quantity,
      unitPrice: d.unitPrice, category: d.category);
  PurchaseOrderEntity _po(db.PurchaseOrderData d) => PurchaseOrderEntity(
      id: d.id, itemId: d.itemId, quantity: d.quantity, totalCost: d.totalCost,
      orderDate: d.orderDate, supplierId: d.supplierId, status: d.status);
  SupplierEntity _s(db.SupplierData d) => SupplierEntity(
      id: d.id, name: d.name, contactPerson: d.contactPerson, phone: d.phone, email: d.email);

  @override Future<InventoryItemEntity?> getItemById(int id) async { final d = await _dao.getItemById(id); return d != null ? _i(d) : null; }
  @override Future<List<InventoryItemEntity>> getAllItems() async => (await _dao.getAllItems()).map(_i).toList();
  @override Future<int> createItem(InventoryItemEntity e) => _dao.insertItem(db.InventoryItemCompanion.insert(name: e.name, sku: Value(e.sku), quantity: Value(e.quantity), unitPrice: Value(e.unitPrice), category: Value(e.category)));
  @override Future<void> updateItem(InventoryItemEntity e) => _dao.updateItem(e.id, db.InventoryItemCompanion(name: Value(e.name), sku: Value(e.sku), quantity: Value(e.quantity), unitPrice: Value(e.unitPrice), category: Value(e.category)));
  @override Future<void> deleteItem(int id) => _dao.deleteItem(id);

  @override Future<PurchaseOrderEntity?> getPurchaseOrderById(int id) async { final d = await _dao.getPurchaseOrderById(id); return d != null ? _po(d) : null; }
  @override Future<List<PurchaseOrderEntity>> getAllPurchaseOrders() async => (await _dao.getAllPurchaseOrders()).map(_po).toList();
  @override Future<int> createPurchaseOrder(PurchaseOrderEntity e) => _dao.insertPurchaseOrder(db.PurchaseOrderCompanion.insert(itemId: e.itemId, quantity: e.quantity, totalCost: e.totalCost, supplierId: Value(e.supplierId), status: Value(e.status), orderDate: Value(e.orderDate)));

  @override Future<SupplierEntity?> getSupplierById(int id) async { final d = await _dao.getSupplierById(id); return d != null ? _s(d) : null; }
  @override Future<List<SupplierEntity>> getAllSuppliers() async => (await _dao.getAllSuppliers()).map(_s).toList();
  @override Future<int> createSupplier(SupplierEntity e) => _dao.insertSupplier(db.SupplierCompanion.insert(name: e.name, contactPerson: Value(e.contactPerson), phone: Value(e.phone), email: Value(e.email)));
  @override Future<void> updateSupplier(SupplierEntity e) => _dao.updateSupplier(e.id, db.SupplierCompanion(name: Value(e.name), contactPerson: Value(e.contactPerson), phone: Value(e.phone), email: Value(e.email)));
  @override Future<void> deleteSupplier(int id) => _dao.deleteSupplier(id);
}