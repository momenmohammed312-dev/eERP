import 'package:edu_erp/src/application/role/use_cases/get_all_roles_use_case.dart';
import 'package:edu_erp/src/domain/role/entities/role_entity.dart';
import '../../../imports/imports.dart';
import '../providers/role_providers.dart';

class RoleListScreen extends ConsumerWidget {
  const RoleListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAllRoles = ref.read(getAllRolesUseCase);
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
                    hintText: 'بحث باسم الدور...',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(width: AppSpacing.md),
              ElevatedButton.icon(
                onPressed: () => context.go('/roles/form'),
                icon: const Icon(Icons.add, size: 18),
                label: const Text('إضافة دور'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          _RoleDataTable(getAllRoles: getAllRoles),
        ],
      ),
    );
  }
}

class _RoleDataTable extends StatelessWidget {
  const _RoleDataTable({required this.getAllRoles});
  final GetAllRolesUseCase getAllRoles;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<RoleEntity>>(
      future: getAllRoles(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final roles = snap.data ?? [];
        if (roles.isEmpty) {
          return const AppEmptyState(
            title: 'لا يوجد أدوار',
            subtitle: 'قم بإضافة أول دور في النظام.',
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['اسم الدور', 'إجراءات'],
              rows: roles.map((r) {
                return [
                  Text(r.name,
                      style: const TextStyle(fontWeight: FontWeight.w600)),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () => context.go('/roles/${r.id}'),
                        child: const Text('عرض'),
                      ),
                    ],
                  ),
                ];
              }).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${roles.length} دور',
                style: context.theme.textTheme.bodySmall?.copyWith(
                    color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }
}