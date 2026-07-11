import 'package:edu_erp/src/domain/canteen/entities/canteen_sale_entity.dart';
import 'package:edu_erp/src/domain/canteen/repositories/canteen_repository.dart';

class GetAllCanteenSalesUseCase {
  final CanteenRepository _repo;
  GetAllCanteenSalesUseCase(this._repo);
  Future<List<CanteenSaleEntity>> call() => _repo.getAllSales();
}