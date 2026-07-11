import 'package:drift/drift.dart';
import '../app_database.dart';

class LibraryDao {
  final AppDatabase db;
  LibraryDao(this.db);

  Future<int> insertBook(BookCompanion data) =>
      db.into(db.book).insert(data);
  Future<BookData?> getBookById(int id) =>
      (db.select(db.book)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<BookData>> getAllBooks() =>
      db.select(db.book).get();
  Future<int> updateBook(int id, BookCompanion data) =>
      (db.update(db.book)..where((t) => t.id.equals(id))).write(data);
  Future<int> deleteBook(int id) =>
      (db.delete(db.book)..where((t) => t.id.equals(id))).go();

  Future<int> insertBorrowing(BorrowingRecordCompanion data) =>
      db.into(db.borrowingRecord).insert(data);
  Future<BorrowingRecordData?> getBorrowingById(int id) =>
      (db.select(db.borrowingRecord)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<BorrowingRecordData>> getAllBorrowings() =>
      db.select(db.borrowingRecord).get();
  Future<void> returnBook(int id, DateTime returnDate) async {
    final record = await (db.select(db.borrowingRecord)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
    if (record == null) return;
    final book = await (db.select(db.book)..where((t) => t.id.equals(record.bookId)))
        .getSingleOrNull();
    await db.transaction(() async {
      await (db.update(db.borrowingRecord)..where((t) => t.id.equals(id)))
          .write(BorrowingRecordCompanion(returnDate: Value(returnDate)));
      if (book != null) {
        await (db.update(db.book)..where((t) => t.id.equals(book.id)))
            .write(BookCompanion(availableCopies: Value(book.availableCopies + 1)));
      }
    });
  }
  Future<List<BorrowingRecordData>> getBorrowingsByStudent(int sid) =>
      (db.select(db.borrowingRecord)..where((t) => t.studentId.equals(sid))).get();
}