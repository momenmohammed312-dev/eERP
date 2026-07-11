import 'package:edu_erp/src/domain/finance/entities/tuition_fee_entity.dart';
import 'package:edu_erp/src/domain/finance/repositories/finance_repository.dart';

class CreateTuitionFeeUseCase {
  final FinanceRepository _repo;
  CreateTuitionFeeUseCase(this._repo);
  Future<int> call(TuitionFeeEntity e) => _repo.createTuitionFee(e);
}