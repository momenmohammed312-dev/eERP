import 'package:go_router/go_router.dart';
import '../app_routes.dart';
import '../../ui/academic/grades_report_print_screen.dart';

List<RouteBase> buildAcademicRoutes() => [
      GoRoute(
        path: AppRoutes.gradesReportPrint,
        name: 'gradesReportPrint',
        builder: (_, __) => const GradesReportPrintScreen(),
      ),
    ];
