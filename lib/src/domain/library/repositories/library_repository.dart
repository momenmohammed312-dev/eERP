import '../entities/book_entity.dart';
import '../entities/borrowing_record_entity.dart';

abstract class LibraryRepository {
  Future<BookEntity?> getBookById(int id);
  Future<List<BookEntity>> getAllBooks();
  Future<int> createBook(BookEntity entity);
  Future<void> updateBook(BookEntity entity);
  Future<void> deleteBook(int id);

  Future<BorrowingRecordEntity?> getBorrowingById(int id);
  Future<List<BorrowingRecordEntity>> getAllBorrowings();
  Future<int> createBorrowing(BorrowingRecordEntity entity);
  Future<void> returnBook(int id, DateTime returnDate);
  Future<List<BorrowingRecordEntity>> getBorrowingsByStudent(int studentId);
}