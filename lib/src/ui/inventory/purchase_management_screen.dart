import '../../imports/imports.dart';
import 'providers/inventory_providers.dart';
import 'purchase_orders_table.dart';

class PurchaseManagementScreen extends ConsumerWidget {
  const PurchaseManagementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.watch(getAllPurchaseOrdersUseCase);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('إدارة المشتريات', style: context.theme.textTheme.headlineMedium),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add, size: 18),
                label: const Text('أمر شراء جديد'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          PurchaseOrdersTable(getAll: getAll),
        ],
      ),
    );
  }
}