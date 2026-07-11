import 'package:go_router/go_router.dart';
import 'app_routes.dart';
import '../ui/person/students/student_list_screen.dart';
import '../ui/person/students/student_profile_screen.dart';
import '../ui/person/students/student_form_screen.dart';
import '../ui/person/teachers/teacher_list_screen.dart';
import '../ui/person/teachers/teacher_profile_screen.dart';
import '../ui/person/teachers/teacher_form_screen.dart';
import '../ui/person/guardians/guardian_list_screen.dart';
import '../ui/person/guardians/guardian_form_screen.dart';
import '../ui/person/guardians/guardian_profile_screen.dart';
import '../ui/person/employees/employee_list_screen.dart';
import '../ui/person/employees/employee_form_screen.dart';
import '../ui/person/employees/employee_profile_screen.dart';
import '../ui/person/roles/role_list_screen.dart';
import '../ui/person/roles/role_form_screen.dart';
import '../ui/person/accounts/user_account_list_screen.dart';

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
      GoRoute(
        path: AppRoutes.guardians,
        name: 'guardians',
        builder: (_, __) => const GuardianListScreen(),
      ),
      GoRoute(
        path: AppRoutes.guardianForm,
        name: 'guardianForm',
        builder: (_, __) => const GuardianFormScreen(),
      ),
      GoRoute(
        path: AppRoutes.guardianProfile,
        name: 'guardianProfile',
        builder: (_, __) => const GuardianProfileScreen(),
      ),
      GoRoute(
        path: AppRoutes.employees,
        name: 'employees',
        builder: (_, __) => const EmployeeListScreen(),
      ),
      GoRoute(
        path: AppRoutes.employeeForm,
        name: 'employeeForm',
        builder: (_, __) => const EmployeeFormScreen(),
      ),
      GoRoute(
        path: AppRoutes.employeeProfile,
        name: 'employeeProfile',
        builder: (_, __) => const EmployeeProfileScreen(),
      ),
      GoRoute(
        path: AppRoutes.roles,
        name: 'roles',
        builder: (_, __) => const RoleListScreen(),
      ),
      GoRoute(
        path: AppRoutes.roleForm,
        name: 'roleForm',
        builder: (_, __) => const RoleFormScreen(),
      ),
      GoRoute(
        path: AppRoutes.roleProfile,
        name: 'roleProfile',
        builder: (_, __) => const RoleFormScreen(),
      ),
      GoRoute(
        path: AppRoutes.userAccounts,
        name: 'userAccounts',
        builder: (_, __) => const UserAccountListScreen(),
      ),
    ];