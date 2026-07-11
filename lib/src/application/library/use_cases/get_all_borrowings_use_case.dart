import 'package:edu_erp/src/domain/library/entities/borrowing_record_entity.dart';
import 'package:edu_erp/src/domain/library/repositories/library_repository.dart';

class GetAllBorrowingsUseCase {
  final LibraryRepository _repo;
  GetAllBorrowingsUseCase(this._repo);
  Future<List<BorrowingRecordEntity>> call() => _repo.getAllBorrowings();
}