import 'package:edu_erp/src/domain/canteen/entities/canteen_sale_entity.dart';
import 'package:edu_erp/src/application/canteen/use_cases/get_all_canteen_sales_use_case.dart';
import '../../imports/imports.dart';
import 'providers/canteen_providers.dart';

class CanteenSalesScreen extends ConsumerWidget {
  const CanteenSalesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.read(getAllCanteenSalesUseCase);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('مبيعات المقصف', style: context.theme.textTheme.headlineMedium),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add, size: 18),
                label: const Text('تسجيل بيع'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          _SalesTable(getAll: getAll),
        ],
      ),
    );
  }
}

class _SalesTable extends StatelessWidget {
  const _SalesTable({required this.getAll});
  final GetAllCanteenSalesUseCase getAll;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CanteenSaleEntity>>(
      future: getAll(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final sales = snap.data ?? <CanteenSaleEntity>[];
        if (sales.isEmpty) {
          return const AppEmptyState(title: 'لا توجد مبيعات');
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['الطالب', 'المبلغ', 'التاريخ', 'الأصناف'],
              rows: sales.map((s) => [
                Text('#${s.studentId}'),
                Text('${s.amount.toStringAsFixed(2)} د.ل'),
                Text(s.saleDate.toString().substring(0, 10)),
                Text(s.items ?? '-'),
              ]).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${sales.length} عملية بيع',
              style: context.theme.textTheme.bodySmall?.copyWith(
                  color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }
}