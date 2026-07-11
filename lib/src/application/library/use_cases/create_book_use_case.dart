import 'package:edu_erp/src/domain/library/entities/book_entity.dart';
import 'package:edu_erp/src/domain/library/repositories/library_repository.dart';

class CreateBookUseCase {
  final LibraryRepository _repo;
  CreateBookUseCase(this._repo);
  Future<int> call(BookEntity e) => _repo.createBook(e);
}