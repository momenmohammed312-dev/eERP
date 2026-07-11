import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:edu_erp/src/infrastructure/providers/database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/inventory_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/inventory/inventory_repository_impl.dart';
import 'package:edu_erp/src/domain/inventory/repositories/inventory_repository.dart';
import 'package:edu_erp/src/application/inventory/use_cases/create_inventory_item_use_case.dart';
import 'package:edu_erp/src/application/inventory/use_cases/get_all_inventory_items_use_case.dart';
import 'package:edu_erp/src/application/inventory/use_cases/create_purchase_order_use_case.dart';
import 'package:edu_erp/src/application/inventory/use_cases/get_all_purchase_orders_use_case.dart';
import 'package:edu_erp/src/application/inventory/use_cases/create_supplier_use_case.dart';
import 'package:edu_erp/src/application/inventory/use_cases/get_all_suppliers_use_case.dart';

final _inventoryRepoProvider = Provider<InventoryRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return InventoryRepositoryImpl(InventoryDao(db));
});

final getAllInventoryItemsUseCase = Provider<GetAllInventoryItemsUseCase>((ref) {
  return GetAllInventoryItemsUseCase(ref.read(_inventoryRepoProvider));
});
final createInventoryItemUseCase = Provider<CreateInventoryItemUseCase>((ref) {
  return CreateInventoryItemUseCase(ref.read(_inventoryRepoProvider));
});
final getAllPurchaseOrdersUseCase = Provider<GetAllPurchaseOrdersUseCase>((ref) {
  return GetAllPurchaseOrdersUseCase(ref.read(_inventoryRepoProvider));
});
final createPurchaseOrderUseCase = Provider<CreatePurchaseOrderUseCase>((ref) {
  return CreatePurchaseOrderUseCase(ref.read(_inventoryRepoProvider));
});
final getAllSuppliersUseCase = Provider<GetAllSuppliersUseCase>((ref) {
  return GetAllSuppliersUseCase(ref.read(_inventoryRepoProvider));
});
final createSupplierUseCase = Provider<CreateSupplierUseCase>((ref) {
  return CreateSupplierUseCase(ref.read(_inventoryRepoProvider));
});
