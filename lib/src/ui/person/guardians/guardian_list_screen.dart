import 'package:edu_erp/src/application/guardian/use_cases/get_all_guardians_use_case.dart';
import 'package:edu_erp/src/domain/guardian/entities/guardian_entity.dart';
import '../../../imports/imports.dart';
import '../providers/guardian_providers.dart';

class GuardianListScreen extends ConsumerWidget {
  const GuardianListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.watch(getAllGuardiansUseCase);
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
                    hintText: 'بحث باسم ولي الأمر...',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(width: AppSpacing.md),
              ElevatedButton.icon(
                onPressed: () => context.go(AppRoutes.guardianForm),
                icon: const Icon(Icons.add, size: 18),
                label: const Text('إضافة ولي أمر'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          _GuardianDataTable(getAll: getAll),
        ],
      ),
    );
  }
}

class _GuardianDataTable extends StatelessWidget {
  const _GuardianDataTable({required this.getAll});
  final GetAllGuardiansUseCase getAll;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<GuardianEntity>>(
      future: getAll(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final guardians = snap.data ?? [];
        if (guardians.isEmpty) {
          return const AppEmptyState(
            title: 'لا يوجد أولياء أمور',
            subtitle: 'قم بإضافة أول ولي أمر في النظام.',
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['رقم القيد', 'صلة القرابة', 'جهة اتصال رئيسية', 'إجراءات'],
              rows: guardians.map((g) {
                return [
                  Text('#${g.id}',
                      style: const TextStyle(fontWeight: FontWeight.w600)),
                  Text(g.relationToStudent ?? '-'),
                  Text(g.isPrimaryContact ? 'نعم' : 'لا'),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () => context.go('/guardians/${g.id}'),
                        child: const Text('عرض'),
                      ),
                    ],
                  ),
                ];
              }).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${guardians.length} ولي أمر',
                style: context.theme.textTheme.bodySmall?.copyWith(
                    color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }
}