import 'package:go_router/go_router.dart';
import 'package:edu_erp/src/routing/app_routes.dart';
import 'package:edu_erp/src/ui/academic/subjects_list_screen.dart';
import 'package:edu_erp/src/ui/academic/classrooms_list_screen.dart';
import 'package:edu_erp/src/ui/academic/class_schedule_screen.dart';
import 'package:edu_erp/src/ui/academic/section_assignment_screen.dart';
import 'package:edu_erp/src/ui/academic/exam_management_screen.dart';
import 'package:edu_erp/src/ui/academic/grade_entry_screen.dart';

List<RouteBase> buildAcademicRoutes() => [
      GoRoute(
        path: AppRoutes.subjects,
        name: 'subjects',
        builder: (_, __) => const SubjectsListScreen(),
      ),
      GoRoute(
        path: AppRoutes.classrooms,
        name: 'classrooms',
        builder: (_, __) => const ClassroomsListScreen(),
      ),
      GoRoute(
        path: AppRoutes.schedule,
        name: 'schedule',
        builder: (_, __) => const ClassScheduleScreen(),
      ),
      GoRoute(
        path: AppRoutes.sectionAssignment,
        name: 'sectionAssignment',
        builder: (_, __) => const SectionAssignmentScreen(),
      ),
      GoRoute(
        path: AppRoutes.examManagement,
        name: 'examManagement',
        builder: (_, __) => const ExamManagementScreen(),
      ),
      GoRoute(
        path: AppRoutes.gradeEntry,
        name: 'gradeEntry',
        builder: (_, __) => const GradeEntryScreen(),
      ),
    ];
