import 'package:edu_erp/src/domain/inventory/entities/purchase_order_entity.dart';
import 'package:edu_erp/src/application/inventory/use_cases/get_all_purchase_orders_use_case.dart';
import '../../imports/imports.dart';

class PurchaseOrdersTable extends StatelessWidget {
  const PurchaseOrdersTable({super.key, required this.getAll});
  final GetAllPurchaseOrdersUseCase getAll;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PurchaseOrderEntity>>(
      future: getAll(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final orders = snap.data ?? <PurchaseOrderEntity>[];
        if (orders.isEmpty) {
          return const AppEmptyState(title: 'لا توجد أوامر شراء');
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['الصنف', 'الكمية', 'التكلفة الإجمالية', 'التاريخ', 'الحالة'],
              rows: orders.map((o) => [
                Text('#${o.itemId}'),
                Text('${o.quantity}'),
                Text('${o.totalCost.toStringAsFixed(2)} د.ل'),
                Text(o.orderDate.toString().substring(0, 10)),
                Text(o.status ?? '-'),
              ]).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${orders.length} أمر شراء',
              style: context.theme.textTheme.bodySmall?.copyWith(
                  color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }
}