import 'package:edu_erp/src/domain/canteen/entities/canteen_sale_entity.dart';
import 'package:edu_erp/src/domain/canteen/repositories/canteen_repository.dart';

class CreateCanteenSaleUseCase {
  final CanteenRepository _repo;
  CreateCanteenSaleUseCase(this._repo);
  Future<int> call(CanteenSaleEntity e) => _repo.createSale(e);
}