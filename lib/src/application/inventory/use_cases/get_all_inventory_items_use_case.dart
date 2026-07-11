import 'package:edu_erp/src/domain/inventory/entities/inventory_item_entity.dart';
import 'package:edu_erp/src/domain/inventory/repositories/inventory_repository.dart';

class GetAllInventoryItemsUseCase {
  final InventoryRepository _repo;
  GetAllInventoryItemsUseCase(this._repo);
  Future<List<InventoryItemEntity>> call() => _repo.getAllItems();
}