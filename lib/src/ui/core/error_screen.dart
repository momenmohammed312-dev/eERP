import '../../imports/imports.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, this.onRetry});

  final VoidCallback? onRetry;

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
                Icons.error_outline,
                size: 32.sp,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              SizedBox(height: AppSpacing.lg),
              Text(
                'حدث خطأ',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: AppSpacing.sm),
              Text(
                'حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى.',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              if (onRetry != null) ...[
                SizedBox(height: AppSpacing.xl),
                SizedBox(
                  width: double.infinity,
                  child: AppButton(
                    label: 'إعادة المحاولة',
                    onPressed: onRetry,
                    variant: ButtonVariant.secondary,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}