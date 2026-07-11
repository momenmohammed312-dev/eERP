import '../../imports/imports.dart';
import 'providers/inventory_providers.dart';
import 'items_table.dart';

class InventoryScreen extends ConsumerWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAllItems = ref.watch(getAllInventoryItemsUseCase);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('إدارة المخزون', style: context.theme.textTheme.headlineMedium),
              ),
              ElevatedButton.icon(
                onPressed: () => context.go(AppRoutes.newInventoryItem),
                icon: const Icon(Icons.add, size: 18),
                label: const Text('إضافة صنف'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          ItemsTable(getAll: getAllItems),
        ],
      ),
    );
  }
}