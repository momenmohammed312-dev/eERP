import 'package:edu_erp/src/application/user_account/use_cases/get_all_user_accounts_use_case.dart';
import 'package:edu_erp/src/domain/user_account/entities/user_account_entity.dart';
import '../../../imports/imports.dart';
import 'package:edu_erp/src/infrastructure/providers/user_account_providers.dart';
import '../students/student_list_status_chip.dart';

class UserAccountListScreen extends ConsumerWidget {
  const UserAccountListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.watch(getAllUserAccountsUseCase);
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
                    hintText: 'بحث باسم المستخدم...',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(width: AppSpacing.md),
              ElevatedButton.icon(
                onPressed: () => context.go(AppRoutes.userAccountForm),
                icon: const Icon(Icons.add, size: 18),
                label: const Text('إضافة مستخدم'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          _AccountDataTable(getAll: getAll),
        ],
      ),
    );
  }
}

class _AccountDataTable extends StatelessWidget {
  const _AccountDataTable({required this.getAll});
  final GetAllUserAccountsUseCase getAll;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<UserAccountEntity>>(
      future: getAll(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final accounts = snap.data ?? [];
        if (accounts.isEmpty) {
          return const AppEmptyState(
            title: 'لا يوجد مستخدمين',
            subtitle: 'قم بإضافة أول مستخدم في النظام.',
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['اسم المستخدم', 'الحالة', 'إجراءات'],
              rows: accounts.map((a) {
                return [
                  Text(a.username,
                      style: const TextStyle(fontWeight: FontWeight.w600)),
                  StudentListStatusChip(
                      label: a.isActive ? 'نشط' : 'معطل'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('عرض'),
                  ),
                ];
              }).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${accounts.length} مستخدم',
                style: context.theme.textTheme.bodySmall?.copyWith(
                    color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }
}