import 'package:edu_erp/src/domain/finance/entities/tuition_fee_entity.dart';
import 'package:edu_erp/src/application/finance/use_cases/get_all_tuition_fees_use_case.dart';
import '../../imports/imports.dart';

class TuitionFeesTable extends StatelessWidget {
  const TuitionFeesTable({super.key, required this.getAll});
  final GetAllTuitionFeesUseCase getAll;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TuitionFeeEntity>>(
      future: getAll(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final fees = snap.data ?? <TuitionFeeEntity>[];
        if (fees.isEmpty) {
          return const AppEmptyState(title: 'لا توجد رسوم مسجلة');
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['الطالب', 'المبلغ', 'تاريخ الاستحقاق', 'الحالة', 'ملاحظات'],
              rows: fees.map((f) => [
                Text('#${f.studentId}'),
                Text('${f.amount.toStringAsFixed(2)} د.ل'),
                Text(f.dueDate.toString().substring(0, 10)),
                Text(f.isPaid ? 'مدفوع' : 'غير مدفوع'),
                Text(f.notes ?? '-'),
              ]).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${fees.length} رسم',
              style: context.theme.textTheme.bodySmall?.copyWith(
                  color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }
}