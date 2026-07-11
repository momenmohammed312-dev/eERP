import 'package:edu_erp/src/domain/library/entities/borrowing_record_entity.dart';
import 'package:edu_erp/src/application/library/use_cases/get_all_borrowings_use_case.dart';
import '../../imports/imports.dart';

class BorrowingsTable extends StatelessWidget {
  const BorrowingsTable({super.key, required this.getAll});
  final GetAllBorrowingsUseCase getAll;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BorrowingRecordEntity>>(
      future: getAll(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final borrowings = snap.data ?? <BorrowingRecordEntity>[];
        if (borrowings.isEmpty) {
          return const AppEmptyState(title: 'لا توجد استعارات');
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['الكتاب', 'الطالب', 'تاريخ الاستعارة', 'تاريخ الإرجاع', 'ملاحظات'],
              rows: borrowings.map((b) => [
                Text('#${b.bookId}'),
                Text('#${b.studentId}'),
                Text(b.borrowDate.toString().substring(0, 10)),
                Text(b.returnDate?.toString().substring(0, 10) ?? '-'),
                Text(b.notes ?? '-'),
              ]).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${borrowings.length} استعارة',
              style: context.theme.textTheme.bodySmall?.copyWith(
                  color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }
}