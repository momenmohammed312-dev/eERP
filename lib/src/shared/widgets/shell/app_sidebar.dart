import '../../../imports/imports.dart';
import 'shell_menu_data.dart';

class AppSidebar extends StatelessWidget {
  const AppSidebar({super.key, required this.currentRoute});
  final String currentRoute;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Container(
      width: 240,
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        border: Border(
          left: BorderSide(
            color: theme.colorScheme.outlineVariant,
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          _SidebarHeader(theme: theme),
          Divider(color: theme.colorScheme.outlineVariant),
          Expanded(
            child: _NavigationMenu(
              theme: theme,
              currentRoute: currentRoute,
            ),
          ),
        ],
      ),
    );
  }
}

class _SidebarHeader extends StatelessWidget {
  const _SidebarHeader({required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.gutter),
      alignment: Alignment.centerRight,
      child: Row(
        children: [
          Icon(Icons.school_outlined,
              color: theme.colorScheme.primary, size: 24.r),
          SizedBox(width: AppSpacing.sm),
          Text(
            'نظام إدارة المركز',
            style: theme.textTheme.titleLarge?.copyWith(
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _NavigationMenu extends StatelessWidget {
  const _NavigationMenu({required this.theme, required this.currentRoute});
  final ThemeData theme;
  final String currentRoute;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.md,
      ),
      itemCount: appMenuGroups.length,
      itemBuilder: (context, index) {
        final group = appMenuGroups[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.sm,
                vertical: AppSpacing.xs,
              ),
              child: Text(
                group.title,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant
                      .withValues(alpha: 0.5),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ...group.items.map((item) {
              final isActive = currentRoute.startsWith(item.route);
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: InkWell(
                  onTap: () => context.go(item.route),
                  borderRadius: BorderRadius.circular(6.r),
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: isActive
                          ? theme.colorScheme.primary.withValues(alpha: 0.08)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(6.r),
                      border: isActive
                          ? Border(
                              right: BorderSide(
                                color: theme.colorScheme.primary,
                                width: 3.w,
                              ),
                            )
                          : null,
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: AppSpacing.sm),
                    child: Row(
                      children: [
                        Icon(item.icon,
                            color: isActive
                                ? theme.colorScheme.primary
                                : theme.colorScheme.onSurfaceVariant,
                            size: 20.r),
                        SizedBox(width: AppSpacing.md),
                        Text(
                          item.title,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: isActive
                                ? theme.colorScheme.primary
                                : theme.colorScheme.onSurface,
                            fontWeight: isActive
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
            SizedBox(height: AppSpacing.md),
          ],
        );
      },
    );
  }
}
