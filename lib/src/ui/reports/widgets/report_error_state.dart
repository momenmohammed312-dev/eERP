import '../../../imports/imports.dart';

class ReportErrorState extends StatelessWidget {
  const ReportErrorState({super.key, required this.error, required this.onRetry});

  final String error;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      padding: EdgeInsets.all(AppSpacing.xl),
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
            Icons.error_outline,
            size: 24.sp,
            color: theme.colorScheme.onSurfaceVariant,
          ),
          SizedBox(height: AppSpacing.md),
          Text(
            'فشل تحميل البيانات',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: AppSpacing.xs),
          Text(
            error,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSpacing.lg),
          AppButton(
            label: 'إعادة المحاولة',
            onPressed: onRetry,
            variant: ButtonVariant.secondary,
          ),
        ],
      ),
    );
  }
}