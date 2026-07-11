import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/library/entities/book_entity.dart';
import 'package:edu_erp/src/domain/library/entities/borrowing_record_entity.dart';
import 'package:edu_erp/src/domain/library/repositories/library_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/library_dao.dart';

class LibraryRepositoryImpl implements LibraryRepository {
  final LibraryDao _dao;
  LibraryRepositoryImpl(this._dao);

  BookEntity _book(db.BookData d) => BookEntity(
      id: d.id, title: d.title, author: d.author, isbn: d.isbn,
      totalCopies: d.totalCopies, availableCopies: d.availableCopies);

  BorrowingRecordEntity _borrow(db.BorrowingRecordData d) =>
      BorrowingRecordEntity(id: d.id, bookId: d.bookId, studentId: d.studentId,
          borrowDate: d.borrowDate, dueDate: d.dueDate, returnDate: d.returnDate,
          notes: d.notes);

  @override Future<BookEntity?> getBookById(int id) async { final d = await _dao.getBookById(id); return d != null ? _book(d) : null; }
  @override Future<List<BookEntity>> getAllBooks() async => (await _dao.getAllBooks()).map(_book).toList();
  @override Future<int> createBook(BookEntity e) => _dao.insertBook(db.BookCompanion.insert(title: e.title, author: Value(e.author), isbn: Value(e.isbn), totalCopies: Value(e.totalCopies), availableCopies: Value(e.availableCopies)));
  @override Future<void> updateBook(BookEntity e) => _dao.updateBook(e.id, db.BookCompanion(title: Value(e.title), author: Value(e.author), isbn: Value(e.isbn), totalCopies: Value(e.totalCopies), availableCopies: Value(e.availableCopies)));
  @override Future<void> deleteBook(int id) => _dao.deleteBook(id);

  @override Future<BorrowingRecordEntity?> getBorrowingById(int id) async { final d = await _dao.getBorrowingById(id); return d != null ? _borrow(d) : null; }
  @override Future<List<BorrowingRecordEntity>> getAllBorrowings() async => (await _dao.getAllBorrowings()).map(_borrow).toList();
  @override Future<int> createBorrowing(BorrowingRecordEntity e) => _dao.insertBorrowing(db.BorrowingRecordCompanion.insert(bookId: e.bookId, studentId: e.studentId, borrowDate: e.borrowDate, dueDate: Value(e.dueDate), notes: Value(e.notes)));
  @override Future<void> returnBook(int id, DateTime returnDate) => _dao.returnBook(id, returnDate);
  @override Future<List<BorrowingRecordEntity>> getBorrowingsByStudent(int sid) async => (await _dao.getBorrowingsByStudent(sid)).map(_borrow).toList();
}