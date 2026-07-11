import 'package:go_router/go_router.dart';
import '../app_routes.dart';
import '../../ui/home/dashboard_screen.dart';
import '../../ui/notifications/notifications_screen.dart';
import '../../ui/settings/settings_screen.dart';
import '../../ui/settings/user_management_screen.dart';
import '../../ui/core/loading_screen.dart';
import '../../ui/core/error_screen.dart';
import '../../ui/core/empty_screen.dart';
import '../../ui/core/forbidden_screen.dart';

List<RouteBase> buildDashboardRoutes() => [
      GoRoute(
        path: AppRoutes.dashboard,
        name: 'dashboard',
        builder: (_, __) => const DashboardScreen(),
      ),
      GoRoute(
        path: AppRoutes.notifications,
        name: 'notifications',
        builder: (_, __) => const NotificationsScreen(),
      ),
      GoRoute(
        path: AppRoutes.settings,
        name: 'settings',
        builder: (_, __) => const SettingsScreen(),
      ),
      GoRoute(
        path: AppRoutes.userManagement,
        name: 'userManagement',
        builder: (_, __) => const UserManagementScreen(),
      ),
      GoRoute(
        path: AppRoutes.loading,
        name: 'loading',
        builder: (_, __) => const LoadingScreen(),
      ),
      GoRoute(
        path: AppRoutes.error,
        name: 'error',
        builder: (_, __) => const ErrorScreen(),
      ),
      GoRoute(
        path: AppRoutes.empty,
        name: 'empty',
        builder: (_, __) => const EmptyScreen(),
      ),
      GoRoute(
        path: AppRoutes.forbidden,
        name: 'forbidden',
        builder: (_, __) => const ForbiddenScreen(),
      ),
    ];
