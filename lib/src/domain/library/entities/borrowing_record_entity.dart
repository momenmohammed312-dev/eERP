class BorrowingRecordEntity {
  final int id;
  final int bookId;
  final int studentId;
  final DateTime borrowDate;
  final DateTime? dueDate;
  final DateTime? returnDate;
  final String? notes;

  const BorrowingRecordEntity({
    required this.id,
    required this.bookId,
    required this.studentId,
    required this.borrowDate,
    this.dueDate,
    this.returnDate,
    this.notes,
  });
}