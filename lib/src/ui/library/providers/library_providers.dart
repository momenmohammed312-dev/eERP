import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:edu_erp/src/ui/person/providers/database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/library_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/library/library_repository_impl.dart';
import 'package:edu_erp/src/domain/library/repositories/library_repository.dart';
import 'package:edu_erp/src/application/library/use_cases/create_book_use_case.dart';
import 'package:edu_erp/src/application/library/use_cases/get_all_books_use_case.dart';
import 'package:edu_erp/src/application/library/use_cases/create_borrowing_use_case.dart';
import 'package:edu_erp/src/application/library/use_cases/get_all_borrowings_use_case.dart';
import 'package:edu_erp/src/application/library/use_cases/return_book_use_case.dart';

final _libraryRepoProvider = Provider<LibraryRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return LibraryRepositoryImpl(LibraryDao(db));
});

final getAllBooksUseCase = Provider<GetAllBooksUseCase>((ref) {
  return GetAllBooksUseCase(ref.read(_libraryRepoProvider));
});
final createBookUseCase = Provider<CreateBookUseCase>((ref) {
  return CreateBookUseCase(ref.read(_libraryRepoProvider));
});
final getAllBorrowingsUseCase = Provider<GetAllBorrowingsUseCase>((ref) {
  return GetAllBorrowingsUseCase(ref.read(_libraryRepoProvider));
});
final createBorrowingUseCase = Provider<CreateBorrowingUseCase>((ref) {
  return CreateBorrowingUseCase(ref.read(_libraryRepoProvider));
});
final returnBookUseCase = Provider<ReturnBookUseCase>((ref) {
  return ReturnBookUseCase(ref.read(_libraryRepoProvider));
});