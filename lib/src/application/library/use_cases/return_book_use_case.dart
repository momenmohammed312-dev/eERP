import 'package:edu_erp/src/domain/library/repositories/library_repository.dart';

class ReturnBookUseCase {
  final LibraryRepository _repo;
  ReturnBookUseCase(this._repo);
  Future<void> call(int borrowingId, DateTime returnDate) =>
      _repo.returnBook(borrowingId, returnDate);
}