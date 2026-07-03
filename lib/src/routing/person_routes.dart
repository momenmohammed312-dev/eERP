import 'package:go_router/go_router.dart';
import 'package:edu_erp/src/routing/app_routes.dart';
import 'package:edu_erp/src/ui/person/students/student_list_screen.dart';
import 'package:edu_erp/src/ui/person/students/student_profile_screen.dart';
import 'package:edu_erp/src/ui/person/students/student_form_screen.dart';
import 'package:edu_erp/src/ui/person/teachers/teacher_list_screen.dart';
import 'package:edu_erp/src/ui/person/teachers/teacher_profile_screen.dart';
import 'package:edu_erp/src/ui/person/teachers/teacher_form_screen.dart';

List<RouteBase> buildPersonRoutes() => [
      GoRoute(
        path: AppRoutes.students,
        name: 'students',
        builder: (_, __) => const StudentListScreen(),
      ),
      GoRoute(
        path: AppRoutes.studentForm,
        name: 'studentForm',
        builder: (_, __) => const StudentFormScreen(),
      ),
      GoRoute(
        path: AppRoutes.studentProfile,
        name: 'studentProfile',
        builder: (_, __) => const StudentProfileScreen(),
      ),
      GoRoute(
        path: AppRoutes.studentProfileV2,
        name: 'studentProfileV2',
        builder: (_, __) => const StudentProfileScreen(),
      ),
      GoRoute(
        path: AppRoutes.teachers,
        name: 'teachers',
        builder: (_, __) => const TeacherListScreen(),
      ),
      GoRoute(
        path: AppRoutes.teacherForm,
        name: 'teacherForm',
        builder: (_, __) => const TeacherFormScreen(),
      ),
      GoRoute(
        path: AppRoutes.teacherProfile,
        name: 'teacherProfile',
        builder: (_, __) => const TeacherProfileScreen(),
      ),
    ];
