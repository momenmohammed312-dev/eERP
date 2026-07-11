import '../../imports/imports.dart';
import 'package:edu_erp/src/infrastructure/providers/library_providers.dart';
import 'borrowings_table.dart';

class BorrowingLogScreen extends ConsumerWidget {
  const BorrowingLogScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.watch(getAllBorrowingsUseCase);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('سجل الاستعارة', style: context.theme.textTheme.headlineMedium),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add, size: 18),
                label: const Text('استعارة جديدة'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          BorrowingsTable(getAll: getAll),
        ],
      ),
    );
  }
}