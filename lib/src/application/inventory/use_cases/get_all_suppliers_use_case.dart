import 'package:edu_erp/src/domain/inventory/entities/supplier_entity.dart';
import 'package:edu_erp/src/domain/inventory/repositories/inventory_repository.dart';

class GetAllSuppliersUseCase {
  final InventoryRepository _repo;
  GetAllSuppliersUseCase(this._repo);
  Future<List<SupplierEntity>> call() => _repo.getAllSuppliers();
}