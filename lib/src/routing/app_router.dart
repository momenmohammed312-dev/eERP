import 'package:go_router/go_router.dart';
import 'package:edu_erp/src/routing/global_navigator.dart';
import 'package:edu_erp/src/routing/app_routes.dart';
import 'package:edu_erp/src/routing/person_routes.dart';
import 'package:edu_erp/src/routing/academic_routes.dart';
import 'package:edu_erp/src/routing/core_shell_routes.dart';
import 'package:edu_erp/src/ui/auth/login_screen.dart';
import 'package:edu_erp/src/ui/shared/feature_scaffold_screen.dart';
import 'package:edu_erp/src/shared/widgets/app_shell.dart';

final GoRouter appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: AppRoutes.login,
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.splash,
      name: 'splash',
      builder: (_, __) => const FeatureScaffoldScreen(
        title: 'جاري التحضير',
        subtitle: 'شاشة البداية (Splash) جاهزة للعرض.',
      ),
    ),
    GoRoute(
      path: AppRoutes.onboarding,
      name: 'onboarding',
      builder: (_, __) => const FeatureScaffoldScreen(
        title: 'التهيئة الأولى',
        subtitle: 'شاشة Onboarding جاهزة للعرض.',
      ),
    ),
    GoRoute(
      path: AppRoutes.login,
      name: 'login',
      builder: (_, __) => const LoginScreen(),
    ),
    ShellRoute(
      builder: (_, __, child) => AppShell(child: child),
      routes: [
        ...buildCoreShellRoutes(),
        ...buildPersonRoutes(),
        ...buildAcademicRoutes(),
      ],
    ),
  ],
);
