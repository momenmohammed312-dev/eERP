import 'package:edu_erp/src/domain/inventory/entities/inventory_item_entity.dart';
import 'package:edu_erp/src/application/inventory/use_cases/get_all_inventory_items_use_case.dart';
import '../../imports/imports.dart';

class ItemsTable extends StatelessWidget {
  const ItemsTable({super.key, required this.getAll});
  final GetAllInventoryItemsUseCase getAll;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<InventoryItemEntity>>(
      future: getAll(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final items = snap.data ?? <InventoryItemEntity>[];
        if (items.isEmpty) {
          return const AppEmptyState(title: 'لا توجد أصناف في المخزون');
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['الاسم', 'رمز SKU', 'الكمية', 'سعر الوحدة', 'التصنيف'],
              rows: items.map((i) => [
                Text(i.name, style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(i.sku ?? '-'),
                Text('${i.quantity}'),
                Text(i.unitPrice != null ? '${i.unitPrice!.toStringAsFixed(2)} د.ل' : '-'),
                Text(i.category ?? '-'),
              ]).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${items.length} صنف',
              style: context.theme.textTheme.bodySmall?.copyWith(
                  color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }
}