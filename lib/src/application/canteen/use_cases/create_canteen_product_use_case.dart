import 'package:edu_erp/src/domain/canteen/entities/canteen_product_entity.dart';
import 'package:edu_erp/src/domain/canteen/repositories/canteen_product_repository.dart';

class CreateCanteenProductUseCase {
  final CanteenProductRepository _repo;
  CreateCanteenProductUseCase(this._repo);
  Future<int> call(CanteenProductEntity entity) => _repo.create(entity);
}
