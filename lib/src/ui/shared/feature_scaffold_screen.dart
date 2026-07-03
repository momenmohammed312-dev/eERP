import '../../imports/imports.dart';

class FeatureScaffoldScreen extends StatelessWidget {
  const FeatureScaffoldScreen({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Container(
        padding: EdgeInsets.all(AppSpacing.lg),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          border: Border.all(color: theme.colorScheme.outlineVariant),
          borderRadius: AppBorders.card,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: theme.textTheme.headlineMedium),
            SizedBox(height: AppSpacing.sm),
            Text(
              subtitle,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            SizedBox(height: AppSpacing.lg),
            const AppEmptyState(
              title: 'الواجهة جاهزة',
              subtitle: 'تم ربط هذه الشاشة بالتنقل وجاهزة لإضافة البيانات والعمليات.',
            ),
          ],
        ),
      ),
    );
  }
}
