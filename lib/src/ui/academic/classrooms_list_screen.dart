import '../../imports/imports.dart';
import 'package:edu_erp/src/infrastructure/providers/academic_providers.dart';

class ClassroomsListScreen extends ConsumerWidget {
  const ClassroomsListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.watch(getAllClassroomsUseCase);
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
                title: 'لا توجد فصول دراسية',
                subtitle: 'قم بإضافة أول فصل دراسي.');
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppDataTable(
                columns: const ['اسم الفصل', 'الكود', 'المرحلة', 'السعة', 'الحالة'],
                rows: items.map((c) => [
                  Text(c.name, style: const TextStyle(fontWeight: FontWeight.w600)),
                  Text(c.code ?? '-'), Text(c.gradeLevel ?? '-'),
                  Text(c.capacity?.toString() ?? '-'),
                  Text(c.isActive ? 'نشط' : 'معطل'),
                ]).toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}