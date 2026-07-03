import '../../imports/imports.dart';

class AppShell extends ConsumerWidget {
  const AppShell({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = context.theme;

    // Sidebar Items list grouped by domain
    final menuGroups = [
      _MenuGroup(
        title: 'الرئيسية',
        items: [
          _MenuItem(
            title: 'لوحة التحكم',
            icon: Icons.dashboard_outlined,
            route: AppRoutes.dashboard,
          ),
        ],
      ),
      _MenuGroup(
        title: 'المستخدمين',
        items: [
          _MenuItem(
            title: 'الطلاب',
            icon: Icons.school_outlined,
            route: AppRoutes.students,
          ),
          _MenuItem(
            title: 'المعلمون',
            icon: Icons.person_outline,
            route: AppRoutes.teachers,
          ),
        ],
      ),
      _MenuGroup(
        title: 'الأكاديميات',
        items: [
          _MenuItem(
            title: 'المواد الدراسية',
            icon: Icons.menu_book_outlined,
            route: AppRoutes.subjects,
          ),
          _MenuItem(
            title: 'الفصول الدراسية',
            icon: Icons.meeting_room_outlined,
            route: AppRoutes.classrooms,
          ),
          _MenuItem(
            title: 'الجدول الدراسي',
            icon: Icons.calendar_month_outlined,
            route: AppRoutes.schedule,
          ),
        ],
      ),
      _MenuGroup(
        title: 'المالية',
        items: [
          _MenuItem(
            title: 'الرسوم والمصاريف',
            icon: Icons.payments_outlined,
            route: AppRoutes.tuitionFees,
          ),
          _MenuItem(
            title: 'المبيعات والمقصف',
            icon: Icons.shopping_cart_outlined,
            route: AppRoutes.canteenSales,
          ),
        ],
      ),
      _MenuGroup(
        title: 'الإدارة',
        items: [
          _MenuItem(
            title: 'المكتبة',
            icon: Icons.local_library_outlined,
            route: AppRoutes.library,
          ),
          _MenuItem(
            title: 'المخزون',
            icon: Icons.inventory_2_outlined,
            route: AppRoutes.inventory,
          ),
          _MenuItem(
            title: 'التقارير',
            icon: Icons.bar_chart_outlined,
            route: AppRoutes.performanceReports,
          ),
        ],
      ),
      _MenuGroup(
        title: 'النظام',
        items: [
          _MenuItem(
            title: 'الإعدادات العامة',
            icon: Icons.settings_outlined,
            route: AppRoutes.settings,
          ),
          _MenuItem(
            title: 'الإشعارات',
            icon: Icons.notifications_outlined,
            route: AppRoutes.notifications,
          ),
        ],
      ),
    ];

    // Find active route location
    final GoRouterState routerState = GoRouterState.of(context);
    final String currentRoute = routerState.uri.path;

    return Directionality(
      textDirection: TextDirection.rtl, // RTL First
      child: Scaffold(
        body: Row(
          children: [
            // Sidebar Navigation (Stitch: 280px width, 1px border on the left side in RTL)
            Container(
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
                  // Sidebar Header / Brand Logo
                  Container(
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
                  ),
                  Divider(color: theme.colorScheme.outlineVariant),
                  
                  // Navigation Menu
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSpacing.sm,
                        vertical: AppSpacing.md,
                      ),
                      itemCount: menuGroups.length,
                      itemBuilder: (context, index) {
                        final group = menuGroups[index];
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
                                  color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
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
                                    padding: EdgeInsets.symmetric(horizontal: AppSpacing.sm),
                                    child: Row(
                                      children: [
                                        Icon(item.icon,
                                            color: isActive
                                                ? theme.colorScheme.primary
                                                : theme.colorScheme
                                                    .onSurfaceVariant,
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
                    ),
                  ),
                ],
              ),
            ),
            
            // Content Workspace Area
            Expanded(
              child: Column(
                children: [
                  // Topbar (Stitch: 64px height, global actions, user info)
                  Container(
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
                        // Page dynamic title or action
                        Text(
                          'مرحباً بك في لوحة الإدارة',
                          style: theme.textTheme.headlineMedium,
                        ),
                        
                        // Action buttons + profile info
                        Row(
                          children: [
                            IconButton(
                              onPressed: () => context.go(AppRoutes.notifications),
                              icon: Icon(Icons.notifications_outlined,
                                  color: theme.colorScheme.onSurface,
                                  size: 20.r),
                            ),
                            SizedBox(width: AppSpacing.sm),
                            VerticalDivider(
                              color: theme.colorScheme.outlineVariant,
                              indent: 16.h,
                              endIndent: 16.h,
                            ),
                            SizedBox(width: AppSpacing.sm),
                            // Profile tag
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 16.r,
                                  backgroundColor: theme.colorScheme.primary.withValues(alpha: 0.1),
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                  // Feature Workspace Screen
                  Expanded(
                    child: ColoredBox(
                      color: theme.colorScheme.surface,
                      child: child,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuGroup {
  const _MenuGroup({required this.title, required this.items});
  final String title;
  final List<_MenuItem> items;
}

class _MenuItem {
  const _MenuItem({
    required this.title,
    required this.icon,
    required this.route,
  });
  final String title;
  final IconData icon;
  final String route;
}
