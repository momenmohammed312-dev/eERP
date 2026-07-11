import 'package:edu_erp/src/domain/inventory/entities/inventory_item_entity.dart';
import 'package:edu_erp/src/domain/inventory/repositories/inventory_repository.dart';

class CreateInventoryItemUseCase {
  final InventoryRepository _repo;
  CreateInventoryItemUseCase(this._repo);
  Future<int> call(InventoryItemEntity e) => _repo.createItem(e);
}