import 'package:edu_erp/src/domain/finance/entities/receipt_entity.dart';
import 'package:edu_erp/src/application/finance/use_cases/get_all_receipts_use_case.dart';
import '../../imports/imports.dart';

class ReceiptsTable extends StatelessWidget {
  const ReceiptsTable({super.key, required this.getAll});
  final GetAllReceiptsUseCase getAll;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ReceiptEntity>>(
      future: getAll(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final receipts = snap.data ?? <ReceiptEntity>[];
        if (receipts.isEmpty) {
          return const AppEmptyState(title: 'لا توجد سندات قبض');
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['الطالب', 'المبلغ', 'التاريخ', 'طريقة الدفع', 'ملاحظات'],
              rows: receipts.map((r) => [
                Text('#${r.studentId}'),
                Text('${r.amount.toStringAsFixed(2)} د.ل'),
                Text(r.receiptDate.toString().substring(0, 10)),
                Text(r.paymentMethod ?? '-'),
                Text(r.notes ?? '-'),
              ]).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${receipts.length} سند',
              style: context.theme.textTheme.bodySmall?.copyWith(
                  color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }
}