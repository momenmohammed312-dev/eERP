import '../../../imports/imports.dart';
import '../students/student_list_status_chip.dart';
import 'teacher_list_actions.dart';

class TeacherListScreen extends StatelessWidget {
  const TeacherListScreen({super.key});

  static const _teachers = [
    ['أحمد محمود حسن', 'رياضيات', 'نشط'],
    ['فاطمة علي إبراهيم', 'لغة عربية', 'نشط'],
    ['يوسف كمال سعيد', 'فيزياء', 'نشط'],
    ['نورا سامي عبد الله', 'كيمياء', 'إجازة'],
  ];

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
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
                    hintText: 'بحث باسم المعلم أو التخصص...',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(width: AppSpacing.md),
              ElevatedButton.icon(
                onPressed: () => context.go(AppRoutes.teacherForm),
                icon: const Icon(Icons.add, size: 18),
                label: const Text('إضافة معلم'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          AppDataTable(
            columns: const ['اسم المعلم', 'التخصص', 'الحالة', 'إجراءات'],
            rows: _teachers.map((t) {
              return [
                Text(t[0], style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(t[1]),
                StudentListStatusChip(label: t[2] == 'نشط' ? 'نشط' : 'موقوف'),
                const TeacherListActions(),
              ];
            }).toList(),
          ),
          SizedBox(height: AppSpacing.sm),
          Text(
            'عرض ${_teachers.length} معلمين',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
