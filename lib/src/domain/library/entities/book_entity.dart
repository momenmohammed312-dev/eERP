class BookEntity {
  final int id;
  final String title;
  final String? author;
  final String? isbn;
  final int totalCopies;
  final int availableCopies;

  const BookEntity({
    required this.id,
    required this.title,
    this.author,
    this.isbn,
    required this.totalCopies,
    required this.availableCopies,
  });
}