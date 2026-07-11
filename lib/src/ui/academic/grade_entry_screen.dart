import '../../imports/imports.dart';
import 'providers/academic_providers.dart';

class GradeEntryScreen extends ConsumerWidget {
  const GradeEntryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.read(getAllGradesUseCase);
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
                title: 'لا توجد درجات',
                subtitle: 'قم بإدخال أول درجة للطالب.');
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppDataTable(
                columns: const ['الطالب', 'الاختبار', 'المادة', 'الدرجة', 'التقدير'],
                rows: items.map((g) => [
                  Text('#${g.studentId}'),
                  Text('#${g.examId}'),
                  Text('#${g.subjectId}'),
                  Text(g.score.toString()),
                  Text(g.gradeLetter ?? '-'),
                ]).toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}