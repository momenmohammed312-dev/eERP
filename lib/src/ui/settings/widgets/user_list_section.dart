import '../../../imports/imports.dart';
import '../../../domain/user_account/entities/user_account_entity.dart';
import 'package:edu_erp/src/infrastructure/providers/user_account_providers.dart';

class UserListSection extends ConsumerStatefulWidget {
  const UserListSection({super.key});
  @override
  ConsumerState<UserListSection> createState() => _UserListSectionState();
}

class _UserListSectionState extends ConsumerState<UserListSection> {
  late final Future<List<UserAccountEntity>> _future;

  @override
  void initState() {
    super.initState();
    _future = ref.read(getAllUserAccountsUseCase)();
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    return Container(
      padding: EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: AppBorders.sm,
        border: Border.all(color: cs.outlineVariant, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('المستخدمون',
              style: tt.titleMedium
                  ?.copyWith(fontWeight: FontWeight.w600)),
          SizedBox(height: AppSpacing.md),
          FutureBuilder<List<UserAccountEntity>>(
            future: _future,
            builder: (_, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              final accounts = snap.data ?? <UserAccountEntity>[];
              if (accounts.isEmpty) {
                return const AppEmptyState(title: 'لا يوجد مستخدمون');
              }
              return Column(
                children: [
                  for (int i = 0; i < accounts.length; i++) ...[
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      title: Text(accounts[i].username),
                      subtitle: Text('الدور: ${accounts[i].roleId}',
                          style: tt.bodySmall
                              ?.copyWith(color: cs.onSurfaceVariant)),
                      leading: Icon(Icons.person_outlined,
                          color: cs.onSurfaceVariant, size: 20),
                    ),
                    if (i < accounts.length - 1)
                      Divider(height: 1, color: cs.outlineVariant),
                  ],
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
