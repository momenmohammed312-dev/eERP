import '../../../imports/imports.dart';
import '../../../domain/settings/entities/setting_entity.dart';
import '../providers/settings_providers.dart';

class SettingTile extends ConsumerWidget {
  const SettingTile({super.key, required this.setting});
  final SettingEntity setting;
  bool get _isBool => setting.value == 'true' || setting.value == 'false';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final update = ref.read(updateSettingUseCase);
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    return Container(
      padding: EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: AppBorders.sm,
        border: Border.all(color: cs.outlineVariant, width: 1),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(setting.key,
                    style: tt.titleSmall
                        ?.copyWith(fontWeight: FontWeight.w500)),
                if (setting.description != null) ...[
                  SizedBox(height: AppSpacing.xxs),
                  Text(setting.description!,
                      style: tt.bodySmall
                          ?.copyWith(color: cs.onSurfaceVariant)),
                ],
              ],
            ),
          ),
          SizedBox(width: AppSpacing.md),
          if (_isBool)
            Switch(
              value: setting.value == 'true',
              onChanged: (v) => update(setting.key, v.toString()),
            )
          else
            SizedBox(
              width: 140,
              child: TextFormField(
                initialValue: setting.value,
                onFieldSubmitted: (v) => update(setting.key, v),
                style: tt.bodyMedium,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: AppSpacing.sm, vertical: AppSpacing.xs),
                  border: OutlineInputBorder(
                      borderRadius: AppBorders.input,
                      borderSide: BorderSide(color: cs.outlineVariant)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: AppBorders.input,
                      borderSide: BorderSide(color: cs.outlineVariant)),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
