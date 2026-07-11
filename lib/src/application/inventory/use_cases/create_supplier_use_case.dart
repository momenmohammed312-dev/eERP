import 'package:edu_erp/src/domain/inventory/entities/supplier_entity.dart';
import 'package:edu_erp/src/domain/inventory/repositories/inventory_repository.dart';

class CreateSupplierUseCase {
  final InventoryRepository _repo;
  CreateSupplierUseCase(this._repo);
  Future<int> call(SupplierEntity e) => _repo.createSupplier(e);
}