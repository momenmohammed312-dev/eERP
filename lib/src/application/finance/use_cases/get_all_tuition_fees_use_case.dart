import 'package:edu_erp/src/domain/finance/entities/tuition_fee_entity.dart';
import 'package:edu_erp/src/domain/finance/repositories/finance_repository.dart';

class GetAllTuitionFeesUseCase {
  final FinanceRepository _repo;
  GetAllTuitionFeesUseCase(this._repo);
  Future<List<TuitionFeeEntity>> call() => _repo.getAllTuitionFees();
}