import 'package:edu_erp/src/domain/canteen/entities/canteen_product_entity.dart';
import 'package:edu_erp/src/domain/canteen/repositories/canteen_product_repository.dart';

class GetAllCanteenProductsUseCase {
  final CanteenProductRepository _repo;
  GetAllCanteenProductsUseCase(this._repo);
  Future<List<CanteenProductEntity>> call() => _repo.getAll();
}
