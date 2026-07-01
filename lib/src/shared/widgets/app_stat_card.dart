import '../../imports/imports.dart';

class AppStatCard extends StatelessWidget {
  const AppStatCard({
    super.key,
    required this.title,
    required this.value,
    this.subTitle,
    required this.icon,
    this.color,
  });

  final String title;
  final String value;
  final String? subTitle;
  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final cardColor = color ?? theme.colorScheme.primary;

    return Container(
      padding: EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border.all(color: theme.colorScheme.outlineVariant),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: AppSpacing.xs),
                Text(
                  value,
                  style: theme.textTheme.headlineLarge?.copyWith(
                    fontFamily: 'Inter', // Inter for digits/numerical stats
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                if (subTitle != null) ...[
                  SizedBox(height: AppSpacing.xs),
                  Text(
                    subTitle!,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ],
            ),
          ),
          
          // Icon Container
          Container(
            padding: EdgeInsets.all(AppSpacing.sm),
            decoration: BoxDecoration(
              color: cardColor.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: HugeIcon(
              icon: icon,
              color: cardColor,
              size: 24.r,
            ),
          ),
        ],
      ),
    );
  }
}
