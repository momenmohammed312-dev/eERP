import 'package:edu_erp/src/domain/finance/entities/expense_entity.dart';
import 'package:edu_erp/src/application/finance/use_cases/get_all_expenses_use_case.dart';
import '../../imports/imports.dart';
import 'providers/finance_providers.dart';

class ExpensesScreen extends ConsumerWidget {
  const ExpensesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.read(getAllExpensesUseCase);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('إدارة المصروفات', style: context.theme.textTheme.headlineMedium),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add, size: 18),
                label: const Text('إضافة مصروف'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          _ExpensesTable(getAll: getAll),
        ],
      ),
    );
  }
}

class _ExpensesTable extends StatelessWidget {
  const _ExpensesTable({required this.getAll});
  final GetAllExpensesUseCase getAll;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ExpenseEntity>>(
      future: getAll(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final expenses = snap.data ?? <ExpenseEntity>[];
        if (expenses.isEmpty) {
          return const AppEmptyState(title: 'لا توجد مصروفات مسجلة');
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['الوصف', 'المبلغ', 'التاريخ', 'التصنيف'],
              rows: expenses.map((e) => [
                Text(e.description),
                Text('${e.amount.toStringAsFixed(2)} د.ل'),
                Text(e.expenseDate.toString().substring(0, 10)),
                Text(e.category ?? '-'),
              ]).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${expenses.length} مصروف',
              style: context.theme.textTheme.bodySmall?.copyWith(
                  color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }
}