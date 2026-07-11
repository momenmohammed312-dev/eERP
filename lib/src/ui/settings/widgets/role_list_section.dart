import '../../../imports/imports.dart';
import '../../../domain/role/entities/role_entity.dart';
import '../../person/providers/role_providers.dart';

class RoleListSection extends ConsumerStatefulWidget {
  const RoleListSection({super.key});

  @override
  ConsumerState<RoleListSection> createState() => _RoleListSectionState();
}

class _RoleListSectionState extends ConsumerState<RoleListSection> {
  late final Future<List<RoleEntity>> _future;

  @override
  void initState() {
    super.initState();
    _future = ref.read(getAllRolesUseCase)();
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
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
          Text(
            'الأدوار',
            style: context.theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: AppSpacing.md),
          FutureBuilder<List<RoleEntity>>(
            future: _future,
            builder: (_, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              final roles = snap.data ?? <RoleEntity>[];
              if (roles.isEmpty) {
                return const AppEmptyState(title: 'لا توجد أدوار');
              }
              return Column(
                children: [
                  for (int i = 0; i < roles.length; i++) ...[
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      title: Text(roles[i].name),
                      leading: Icon(
                        Icons.security_outlined,
                        color: cs.onSurfaceVariant,
                        size: 20,
                      ),
                    ),
                    if (i < roles.length - 1)
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
