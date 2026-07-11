import '../../imports/imports.dart';
import '../../domain/student/entities/student_entity.dart';

class DashboardRecentStudents extends StatelessWidget {
  const DashboardRecentStudents({
    super.key,
    required this.students,
    required this.personNames,
  });

  final List<StudentEntity> students;
  final Map<int, String> personNames;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final recent = List<StudentEntity>.from(students)
      ..sort((a, b) => b.enrollmentDate.compareTo(a.enrollmentDate));
    final lastFive = recent.take(5).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'آخر الطلاب المسجلين حديثاً',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: AppSpacing.md),
        AppDataTable(
          columns: const ['اسم الطالب', 'رقم القيد', 'تاريخ التسجيل'],
          rows: lastFive.map((s) {
            final name = personNames[s.personId] ?? '#${s.id}';
            final date =
                '${s.enrollmentDate.year}/${s.enrollmentDate.month.toString().padLeft(2, '0')}/${s.enrollmentDate.day.toString().padLeft(2, '0')}';
            return [
              Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
              Text('#${s.id}'),
              Text(date),
            ];
          }).toList(),
        ),
      ],
    );
  }
}
