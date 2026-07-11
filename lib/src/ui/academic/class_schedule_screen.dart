import '../../imports/imports.dart';
import 'package:edu_erp/src/infrastructure/providers/academic_providers.dart';

class ClassScheduleScreen extends ConsumerWidget {
  const ClassScheduleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.watch(getAllSchedulesUseCase);
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
                title: 'لا يوجد جدول دراسي',
                subtitle: 'قم بإضافة الحصص للجدول.');
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('الجدول الدراسي', style: context.theme.textTheme.titleLarge),
              SizedBox(height: AppSpacing.md),
              AppDataTable(
                columns: const ['الفصل', 'المادة', 'المعلم', 'اليوم', 'الوقت'],
                rows: items.map((s) => [
                  Text('#${s.classroomId}'),
                  Text('#${s.subjectId}'),
                  Text('#${s.teacherId}'),
                  Text(['', 'السبت','الأحد','الاثنين','الثلاثاء','الأربعاء','الخميس'][s.dayOfWeek]),
                  Text('${s.startTime} - ${s.endTime}'),
                ]).toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}