import 'package:go_router/go_router.dart';
import 'package:edu_erp/src/routing/global_navigator.dart';
import 'package:edu_erp/src/routing/app_routes.dart';

import 'package:edu_erp/src/ui/auth/login_screen.dart';
import 'package:edu_erp/src/ui/home/dashboard_screen.dart';
import 'package:edu_erp/src/shared/widgets/app_shell.dart';
import 'package:flutter/material.dart';

final GoRouter appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: AppRoutes.login, // Initial state set to Login
  routes: <RouteBase>[
    // Authentication Routes (Outside Shell)
    GoRoute(
      path: AppRoutes.login,
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),

    // Application Workspace Shell Route
    ShellRoute(
      builder: (context, state, child) {
        return AppShell(child: child);
      },
      routes: [
        // Dashboard
        GoRoute(
          path: AppRoutes.dashboard,
          name: 'dashboard',
          builder: (context, state) => const DashboardScreen(),
        ),
        
        // Placeholder routing for other modules to prevent crashes on transition
        GoRoute(
          path: '/students',
          builder: (context, state) => const Scaffold(
            body: Center(child: Text('صفحة الطلاب (قيد الإنشاء)')),
          ),
        ),
        GoRoute(
          path: '/teachers',
          builder: (context, state) => const Scaffold(
            body: Center(child: Text('صفحة المعلمين (قيد الإنشاء)')),
          ),
        ),
        GoRoute(
          path: '/academic/subjects',
          builder: (context, state) => const Scaffold(
            body: Center(child: Text('صفحة المواد الدراسية (قيد الإنشاء)')),
          ),
        ),
        GoRoute(
          path: '/academic/classrooms',
          builder: (context, state) => const Scaffold(
            body: Center(child: Text('صفحة الفصول الدراسية (قيد الإنشاء)')),
          ),
        ),
        GoRoute(
          path: '/academic/schedule',
          builder: (context, state) => const Scaffold(
            body: Center(child: Text('صفحة الجدول الدراسي (قيد الإنشاء)')),
          ),
        ),
        GoRoute(
          path: '/finance/fees',
          builder: (context, state) => const Scaffold(
            body: Center(child: Text('صفحة الرسوم والمصاريف (قيد الإنشاء)')),
          ),
        ),
        GoRoute(
          path: '/canteen/sales',
          builder: (context, state) => const Scaffold(
            body: Center(child: Text('صفحة المبيعات والمقصف (قيد الإنشاء)')),
          ),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const Scaffold(
            body: Center(child: Text('صفحة الإعدادات العامة (قيد الإنشاء)')),
          ),
        ),
        GoRoute(
          path: '/notifications',
          builder: (context, state) => const Scaffold(
            body: Center(child: Text('مركز الإشعارات (قيد الإنشاء)')),
          ),
        ),
      ],
    ),
  ],
);
