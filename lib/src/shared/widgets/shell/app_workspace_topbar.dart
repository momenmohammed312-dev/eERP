import '../../../imports/imports.dart';

class AppWorkspaceTopbar extends StatelessWidget {
  const AppWorkspaceTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Container(
      height: 64.h,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.outlineVariant,
            width: 1,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.gutter),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'مرحباً بك في لوحة الإدارة',
            style: theme.textTheme.headlineMedium,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () => context.go(AppRoutes.notifications),
                icon: Icon(Icons.notifications_outlined,
                    color: theme.colorScheme.onSurface, size: 20.r),
              ),
              SizedBox(width: AppSpacing.sm),
              VerticalDivider(
                color: theme.colorScheme.outlineVariant,
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(width: AppSpacing.sm),
              _ProfileTag(theme: theme),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProfileTag extends StatelessWidget {
  const _ProfileTag({required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 16.r,
          backgroundColor:
              theme.colorScheme.primary.withValues(alpha: 0.1),
          child: Text(
            'م',
            style: TextStyle(
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
            ),
          ),
        ),
        SizedBox(width: AppSpacing.sm),
        Text(
          'مؤمن البدراوي',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
