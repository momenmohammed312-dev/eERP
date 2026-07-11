import 'package:go_router/go_router.dart';
import '../app_routes.dart';
import '../../ui/finance/tuition_fees_screen.dart';
import '../../ui/finance/receipts_screen.dart';
import '../../ui/finance/payroll_screen.dart';
import '../../ui/finance/expenses_screen.dart';
import '../../ui/finance/financial_report_print_screen.dart';

List<RouteBase> buildFinanceRoutes() => [
      GoRoute(
        path: AppRoutes.tuitionFees,
        name: 'tuitionFees',
        builder: (_, __) => const TuitionFeesScreen(),
      ),
      GoRoute(
        path: AppRoutes.newReceipt,
        name: 'newReceipt',
        builder: (_, __) => const ReceiptsScreen(),
      ),
      GoRoute(
        path: AppRoutes.payroll,
        name: 'payroll',
        builder: (_, __) => const PayrollScreen(),
      ),
      GoRoute(
        path: AppRoutes.expenses,
        name: 'expenses',
        builder: (_, __) => const ExpensesScreen(),
      ),
      GoRoute(
        path: AppRoutes.financialReportPrint,
        name: 'financialReportPrint',
        builder: (_, __) => const FinancialReportPrintScreen(),
      ),
    ];
