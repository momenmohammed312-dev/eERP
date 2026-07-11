import 'package:edu_erp/src/domain/finance/entities/payroll_entity.dart';
import 'package:edu_erp/src/application/finance/use_cases/get_all_payrolls_use_case.dart';
import '../../imports/imports.dart';

class PayrollTable extends StatelessWidget {
  const PayrollTable({super.key, required this.getAll});
  final GetAllPayrollsUseCase getAll;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PayrollEntity>>(
      future: getAll(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final payrolls = snap.data ?? <PayrollEntity>[];
        if (payrolls.isEmpty) {
          return const AppEmptyState(title: 'لا توجد رواتب مسجلة');
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['الموظف', 'الراتب', 'الاستقطاعات', 'المكافآت', 'تاريخ الدفع', 'ملاحظات'],
              rows: payrolls.map((p) => [
                Text('#${p.employeeId}'),
                Text('${p.salary.toStringAsFixed(2)} د.ل'),
                Text(p.deductions != null ? '${p.deductions!.toStringAsFixed(2)} د.ل' : '-'),
                Text(p.bonuses != null ? '${p.bonuses!.toStringAsFixed(2)} د.ل' : '-'),
                Text(p.payDate.toString().substring(0, 10)),
                Text(p.notes ?? '-'),
              ]).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${payrolls.length} راتب',
              style: context.theme.textTheme.bodySmall?.copyWith(
                  color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }
}