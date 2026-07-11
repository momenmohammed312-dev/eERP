import 'package:edu_erp/src/domain/library/entities/book_entity.dart';
import 'package:edu_erp/src/domain/library/repositories/library_repository.dart';

class GetAllBooksUseCase {
  final LibraryRepository _repo;
  GetAllBooksUseCase(this._repo);
  Future<List<BookEntity>> call() => _repo.getAllBooks();
}