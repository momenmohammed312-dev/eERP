import '../../imports/imports.dart';

class ForbiddenScreen extends StatelessWidget {
  const ForbiddenScreen({super.key});

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
                Icons.lock,
                size: 32.sp,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              SizedBox(height: AppSpacing.lg),
              Text(
                'لا توجد صلاحيات',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: AppSpacing.sm),
              Text(
                'ليس لديك صلاحية للوصول إلى هذه الصفحة.',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: AppSpacing.xl),
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  label: 'العودة للرئيسية',
                  onPressed: () => context.go(AppRoutes.dashboard),
                  variant: ButtonVariant.secondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}