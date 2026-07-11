import '../../imports/imports.dart';
import 'package:edu_erp/src/infrastructure/providers/academic_providers.dart';

class ExamManagementScreen extends ConsumerWidget {
  const ExamManagementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.watch(getAllExamsUseCase);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: FutureBuilder(
        future: getAll(),
        builder: (_, snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final items = snap.data ?? [];
          if (items.isEmpty) {
            return const AppEmptyState(
                title: 'لا توجد اختبارات',
                subtitle: 'قم بإنشاء أول اختبار.');
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppDataTable(
                columns: const ['المادة', 'الفصل', 'التاريخ', 'النوع', 'الدرجة القصوى'],
                rows: items.map((e) => [
                  Text('#${e.subjectId}'),
                  Text('#${e.classroomId}'),
                  Text(e.examDate.toString().substring(0, 10)),
                  Text(e.examType ?? '-'),
                  Text(e.maxScore?.toString() ?? '-'),
                ]).toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}