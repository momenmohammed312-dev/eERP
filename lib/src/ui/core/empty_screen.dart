import '../../imports/imports.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key, this.title, this.subtitle});

  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(AppSpacing.xl),
          margin: EdgeInsets.all(AppSpacing.lg),
          constraints: BoxConstraints(maxWidth: 400.w),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: AppBorders.card,
            border: Border.all(
              color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.inbox,
                size: 32.sp,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              SizedBox(height: AppSpacing.lg),
              Text(
                title ?? 'لا توجد بيانات',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: AppSpacing.sm),
              Text(
                subtitle ?? 'لا توجد بيانات لعرضها حالياً.',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}