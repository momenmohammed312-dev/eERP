import 'package:edu_erp/src/domain/library/entities/book_entity.dart';
import 'package:edu_erp/src/application/library/use_cases/get_all_books_use_case.dart';
import '../../imports/imports.dart';

class BooksTable extends StatelessWidget {
  const BooksTable({super.key, required this.getAll});
  final GetAllBooksUseCase getAll;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BookEntity>>(
      future: getAll(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final books = snap.data ?? <BookEntity>[];
        if (books.isEmpty) {
          return const AppEmptyState(title: 'لا توجد كتب في المكتبة');
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['العنوان', 'المؤلف', 'الرقم المعياري', 'العدد الكلي', 'المتاح'],
              rows: books.map((b) => [
                Text(b.title, style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(b.author ?? '-'),
                Text(b.isbn ?? '-'),
                Text('${b.totalCopies}'),
                Text('${b.availableCopies}'),
              ]).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${books.length} كتاب',
              style: context.theme.textTheme.bodySmall?.copyWith(
                  color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }
}