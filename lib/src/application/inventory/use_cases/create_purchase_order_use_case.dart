import 'package:edu_erp/src/domain/inventory/entities/purchase_order_entity.dart';
import 'package:edu_erp/src/domain/inventory/repositories/inventory_repository.dart';

class CreatePurchaseOrderUseCase {
  final InventoryRepository _repo;
  CreatePurchaseOrderUseCase(this._repo);
  Future<int> call(PurchaseOrderEntity e) => _repo.createPurchaseOrder(e);
}