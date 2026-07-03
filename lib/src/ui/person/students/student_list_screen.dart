import '../../../imports/imports.dart';
import 'student_list_actions.dart';
import 'student_list_status_chip.dart';

class StudentListScreen extends StatelessWidget {
  const StudentListScreen({super.key});

  static const _students = [
    ['محمد أحمد علي', 'الثالث الثانوي - أ', 'نشط'],
    ['سارة محمود يوسف', 'الأول الثانوي - ب', 'نشط'],
    ['خالد عبد الرحمن', 'الثاني الثانوي - أ', 'نشط'],
    ['رنا طارق سعيد', 'الثالث الثانوي - ب', 'موقوف'],
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
              Expanded(
                child: TextField(
                  decoration: const InputDecoration(
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
          AppDataTable(
            columns: const ['اسم الطالب', 'الصف', 'الحالة', 'إجراءات'],
            rows: _students.map((s) {
              return [
                Text(s[0], style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(s[1]),
                StudentListStatusChip(label: s[2]),
                const StudentListActions(),
              ];
            }).toList(),
          ),
          SizedBox(height: AppSpacing.sm),
          Text(
            'عرض ${_students.length} طلاب',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
