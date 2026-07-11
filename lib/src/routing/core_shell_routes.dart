import 'package:go_router/go_router.dart';
import 'routes/dashboard_routes.dart';
import 'routes/finance_routes.dart';
import 'routes/academic_routes.dart';
import 'routes/feature_routes.dart';

List<RouteBase> buildCoreShellRoutes() => [
      ...buildDashboardRoutes(),
      ...buildFinanceRoutes(),
      ...buildAcademicRoutes(),
      ...buildFeatureRoutes(),
    ];
