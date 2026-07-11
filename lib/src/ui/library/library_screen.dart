import '../../imports/imports.dart';
import 'providers/library_providers.dart';
import 'books_table.dart';

class LibraryScreen extends ConsumerWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAllBooks = ref.read(getAllBooksUseCase);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('إدارة المكتبة', style: context.theme.textTheme.headlineMedium),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add, size: 18),
                label: const Text('إضافة كتاب'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          BooksTable(getAll: getAllBooks),
        ],
      ),
    );
  }
}