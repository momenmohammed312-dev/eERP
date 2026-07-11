import '../../imports/imports.dart';
import 'providers/academic_providers.dart';

class SubjectsListScreen extends ConsumerWidget {
  const SubjectsListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.watch(getAllSubjectsUseCase);
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
            return const AppEmptyState(title: 'لا توجد مواد',
                subtitle: 'قم بإضافة أول مادة دراسية.');
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppDataTable(
                columns: const ['اسم المادة', 'الكود', 'الوصف', 'الحالة'],
                rows: items.map((s) => [
                  Text(s.name, style: const TextStyle(fontWeight: FontWeight.w600)),
                  Text(s.code ?? '-'), Text(s.description ?? '-'),
                  Text(s.isActive ? 'نشط' : 'معطل'),
                ]).toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}