import '../../imports/imports.dart';
import 'package:edu_erp/src/infrastructure/providers/finance_providers.dart';
import 'receipts_table.dart';

class ReceiptsScreen extends ConsumerWidget {
  const ReceiptsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.watch(getAllReceiptsUseCase);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('سندات القبض', style: context.theme.textTheme.headlineMedium),
              ),
              ElevatedButton.icon(
                onPressed: () => context.go(AppRoutes.newReceipt),
                icon: const Icon(Icons.add, size: 18),
                label: const Text('سند قبض جديد'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          ReceiptsTable(getAll: getAll),
        ],
      ),
    );
  }
}