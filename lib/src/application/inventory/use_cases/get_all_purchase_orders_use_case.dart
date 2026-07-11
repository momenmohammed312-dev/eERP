import 'package:edu_erp/src/domain/inventory/entities/purchase_order_entity.dart';
import 'package:edu_erp/src/domain/inventory/repositories/inventory_repository.dart';

class GetAllPurchaseOrdersUseCase {
  final InventoryRepository _repo;
  GetAllPurchaseOrdersUseCase(this._repo);
  Future<List<PurchaseOrderEntity>> call() => _repo.getAllPurchaseOrders();
}