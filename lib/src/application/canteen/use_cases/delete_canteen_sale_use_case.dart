import 'package:edu_erp/src/domain/canteen/repositories/canteen_repository.dart';

class DeleteCanteenSaleUseCase {
  final CanteenRepository _repo;
  DeleteCanteenSaleUseCase(this._repo);
  Future<void> call(int id) => _repo.deleteSale(id);
}
