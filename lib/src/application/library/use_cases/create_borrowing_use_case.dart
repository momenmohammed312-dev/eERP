import 'package:edu_erp/src/domain/library/entities/borrowing_record_entity.dart';
import 'package:edu_erp/src/domain/library/repositories/library_repository.dart';

class CreateBorrowingUseCase {
  final LibraryRepository _repo;
  CreateBorrowingUseCase(this._repo);
  Future<int> call(BorrowingRecordEntity e) => _repo.createBorrowing(e);
}