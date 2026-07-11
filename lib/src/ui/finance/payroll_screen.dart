import '../../imports/imports.dart';
import 'providers/finance_providers.dart';
import 'payroll_table.dart';

class PayrollScreen extends ConsumerWidget {
  const PayrollScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.watch(getAllPayrollsUseCase);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('إدارة الرواتب', style: context.theme.textTheme.headlineMedium),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add, size: 18),
                label: const Text('إضافة راتب'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          PayrollTable(getAll: getAll),
        ],
      ),
    );
  }
}