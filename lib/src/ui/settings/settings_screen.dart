import '../../imports/imports.dart';
import '../../domain/settings/entities/setting_entity.dart';
import 'providers/settings_providers.dart';
import 'widgets/setting_tile.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  late final Future<List<SettingEntity>> _future;

  @override
  void initState() {
    super.initState();
    _future = ref.read(getAllSettingsUseCase)();
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.xl,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'إعدادات النظام',
            style: context.theme.textTheme.headlineMedium?.copyWith(
              color: cs.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: AppSpacing.xs),
          Text(
            'إدارة التفضيلات والإعدادات العامة للنظام',
            style: context.theme.textTheme.bodyMedium?.copyWith(
              color: cs.onSurfaceVariant,
            ),
          ),
          SizedBox(height: AppSpacing.xl),
          FutureBuilder<List<SettingEntity>>(
            future: _future,
            builder: (_, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              final settings = snap.data ?? [];
              if (settings.isEmpty) {
                return const AppEmptyState(title: 'لا توجد إعدادات');
              }
              return Column(
                children: [
                  for (int i = 0; i < settings.length; i++) ...[
                    SettingTile(setting: settings[i]),
                    if (i < settings.length - 1)
                      SizedBox(height: AppSpacing.sm),
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
