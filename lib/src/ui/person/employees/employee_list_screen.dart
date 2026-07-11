import 'package:edu_erp/src/application/employee/use_cases/get_all_employees_use_case.dart';
import 'package:edu_erp/src/domain/employee/entities/employee_entity.dart';
import '../../../imports/imports.dart';
import '../providers/employee_providers.dart';
import '../students/student_list_status_chip.dart';

class EmployeeListScreen extends ConsumerWidget {
  const EmployeeListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.read(getAllEmployeesUseCase);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'بحث باسم الموظف...',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(width: AppSpacing.md),
              ElevatedButton.icon(
                onPressed: () => context.go('/employees/form'),
                icon: const Icon(Icons.add, size: 18),
                label: const Text('إضافة موظف'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          _EmployeeDataTable(getAll: getAll),
        ],
      ),
    );
  }
}

class _EmployeeDataTable extends StatelessWidget {
  const _EmployeeDataTable({required this.getAll});
  final GetAllEmployeesUseCase getAll;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EmployeeEntity>>(
      future: getAll(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final employees = snap.data ?? [];
        if (employees.isEmpty) {
          return const AppEmptyState(
            title: 'لا يوجد موظفون',
            subtitle: 'قم بإضافة أول موظف في النظام.',
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['رقم القيد', 'المسمى الوظيفي', 'الحالة', 'إجراءات'],
              rows: employees.map((e) {
                return [
                  Text('#${e.id}',
                      style: const TextStyle(fontWeight: FontWeight.w600)),
                  Text(e.jobTitle ?? '-'),
                  StudentListStatusChip(label: e.status ? 'نشط' : 'موقوف'),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () => context.go('/employees/${e.id}'),
                        child: const Text('عرض'),
                      ),
                    ],
                  ),
                ];
              }).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${employees.length} موظف',
                style: context.theme.textTheme.bodySmall?.copyWith(
                    color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }
}