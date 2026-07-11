import 'package:edu_erp/src/application/student/use_cases/get_all_students_use_case.dart';
import 'package:edu_erp/src/domain/student/entities/student_entity.dart';
import '../../../imports/imports.dart';
import 'package:edu_erp/src/infrastructure/providers/student_providers.dart';
import 'student_list_actions.dart';
import 'student_list_status_chip.dart';

class StudentListScreen extends ConsumerWidget {
  const StudentListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.watch(getAllStudentsUseCase);
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
                    hintText: 'بحث باسم الطالب أو الصف...',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(width: AppSpacing.md),
              ElevatedButton.icon(
                onPressed: () => context.go(AppRoutes.studentForm),
                icon: const Icon(Icons.add, size: 18),
                label: const Text('إضافة طالب'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          _StudentDataTable(getAll: getAll),
        ],
      ),
    );
  }
}

class _StudentDataTable extends StatelessWidget {
  const _StudentDataTable({required this.getAll});
  final GetAllStudentsUseCase getAll;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<StudentEntity>>(
      future: getAll(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final students = snap.data ?? [];
        if (students.isEmpty) {
          return const AppEmptyState(
            title: 'لا يوجد طلاب',
            subtitle: 'قم بإضافة أول طالب في النظام.',
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['رقم القيد', 'الحالة', 'إجراءات'],
              rows: students.map((s) {
                return [
                  Text('#${s.id}',
                      style: const TextStyle(fontWeight: FontWeight.w600)),
                  StudentListStatusChip(label: s.status ? 'نشط' : 'موقوف'),
                  StudentListActions(studentId: s.id),
                ];
              }).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${students.length} طلاب',
                style: context.theme.textTheme.bodySmall?.copyWith(
                    color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }
}