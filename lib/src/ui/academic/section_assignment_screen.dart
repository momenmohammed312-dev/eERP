import 'package:edu_erp/src/domain/academic/entities/section_assignment_entity.dart';
import '../../imports/imports.dart';
import 'providers/academic_providers.dart';

class SectionAssignmentScreen extends ConsumerWidget {
  const SectionAssignmentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.watch(getAllSectionAssignmentsUseCase);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: FutureBuilder<List<SectionAssignmentEntity>>(
        future: getAll(),
        builder: (_, snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final items = snap.data ?? [];
          if (items.isEmpty) {
            return const AppEmptyState(
                title: 'لا يوجد توزيع للطلاب',
                subtitle: 'قم بتعيين الطلاب للفصول الدراسية.');
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppDataTable(
                columns: const ['الطالب', 'الفصل', 'العام الدراسي'],
                rows: items.map((a) => [
                  Text('#${a.studentId}',
                      style: const TextStyle(fontWeight: FontWeight.w600)),
                  Text('#${a.classroomId}'),
                  Text(a.academicYear ?? '-'),
                ]).toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}