import 'package:go_router/go_router.dart';
import 'global_navigator.dart';
import 'app_routes.dart';
import 'person_routes.dart';
import 'academic_routes.dart';
import 'core_shell_routes.dart';
import '../ui/auth/login_screen.dart';
import '../shared/widgets/app_shell.dart';
import '../ui/core/splash_screen.dart';
import '../ui/onboarding/onboarding_page.dart';

final GoRouter appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: AppRoutes.login,
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.splash,
      name: 'splash',
      builder: (_, __) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoutes.onboarding,
      name: 'onboarding',
      builder: (_, __) => const OnboardingPage(),
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
