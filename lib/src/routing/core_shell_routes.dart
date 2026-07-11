import 'package:go_router/go_router.dart';
import 'app_routes.dart';
import '../ui/home/dashboard_screen.dart';
import '../ui/shared/feature_scaffold_screen.dart';
import '../ui/attendance/staff_attendance_screen.dart';
import '../ui/finance/tuition_fees_screen.dart';
import '../ui/finance/receipts_screen.dart';
import '../ui/finance/payroll_screen.dart';
import '../ui/finance/expenses_screen.dart';
import '../ui/finance/financial_report_print_screen.dart';
import '../ui/academic/grades_report_print_screen.dart';
import '../ui/wallet/wallet_screen.dart';
import '../ui/canteen/canteen_sales_screen.dart';
import '../ui/library/library_screen.dart';
import '../ui/library/borrowing_log_screen.dart';
import '../ui/inventory/inventory_screen.dart';
import '../ui/inventory/suppliers_screen.dart';
import '../ui/inventory/purchase_management_screen.dart';
import '../ui/inventory/new_inventory_item_screen.dart';

List<RouteBase> buildCoreShellRoutes() => [
      GoRoute(
        path: AppRoutes.dashboard,
        name: 'dashboard',
        builder: (_, __) => const DashboardScreen(),
      ),
      GoRoute(
        path: AppRoutes.notifications,
        name: 'notifications',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'مركز الإشعارات',
          subtitle: 'عرض الإشعارات والتنبيهات النظامية.',
        ),
      ),
      GoRoute(
        path: AppRoutes.settings,
        name: 'settings',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'إعدادات النظام',
          subtitle: 'إعدادات المدرسة والتفضيلات العامة.',
        ),
      ),
      GoRoute(
        path: AppRoutes.tuitionFees,
        name: 'tuitionFees',
        builder: (_, __) => const TuitionFeesScreen(),
      ),
      GoRoute(
        path: AppRoutes.canteenSales,
        name: 'canteenSales',
        builder: (_, __) => const CanteenSalesScreen(),
      ),
      GoRoute(
        path: AppRoutes.staffAttendance,
        name: 'staffAttendance',
        builder: (_, __) => const StaffAttendanceScreen(),
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
      GoRoute(
        path: AppRoutes.gradesReportPrint,
        name: 'gradesReportPrint',
        builder: (_, __) => const GradesReportPrintScreen(),
      ),
      GoRoute(
        path: AppRoutes.wallet,
        name: 'wallet',
        builder: (_, __) => const WalletScreen(),
      ),
      GoRoute(
        path: AppRoutes.library,
        name: 'library',
        builder: (_, __) => const LibraryScreen(),
      ),
      GoRoute(
        path: AppRoutes.borrowingLog,
        name: 'borrowingLog',
        builder: (_, __) => const BorrowingLogScreen(),
      ),
      GoRoute(
        path: AppRoutes.inventory,
        name: 'inventory',
        builder: (_, __) => const InventoryScreen(),
      ),
      GoRoute(
        path: AppRoutes.newInventoryItem,
        name: 'newInventoryItem',
        builder: (_, __) => const NewInventoryItemScreen(),
      ),
      GoRoute(
        path: AppRoutes.purchaseManagement,
        name: 'purchaseManagement',
        builder: (_, __) => const PurchaseManagementScreen(),
      ),
      GoRoute(
        path: AppRoutes.suppliers,
        name: 'suppliers',
        builder: (_, __) => const SuppliersScreen(),
      ),
      GoRoute(
        path: AppRoutes.academicAttendanceReports,
        name: 'academicAttendanceReports',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'تقارير الأداء الأكاديمي والحضور',
          subtitle: 'تقارير التحصيل ونسب الحضور.',
        ),
      ),
      GoRoute(
        path: AppRoutes.financialSalesReports,
        name: 'financialSalesReports',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'التقارير المالية والمبيعات',
          subtitle: 'تقارير الدخل والمصروفات والمبيعات.',
        ),
      ),
      GoRoute(
        path: AppRoutes.performanceReports,
        name: 'performanceReports',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'تقارير الأداء العام',
          subtitle: 'مؤشرات الأداء العامة للنظام.',
        ),
      ),
      GoRoute(
        path: AppRoutes.reportBuilder,
        name: 'reportBuilder',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'بناء التقارير المخصصة',
          subtitle: 'إنشاء تقارير مخصصة حسب الفلاتر.',
        ),
      ),
      GoRoute(
        path: AppRoutes.userManagement,
        name: 'userManagement',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'إدارة المستخدمين والصلاحيات',
          subtitle: 'إدارة الأدوار وصلاحيات الوصول.',
        ),
      ),
      GoRoute(
        path: AppRoutes.loading,
        name: 'loading',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'حالة التحميل',
          subtitle: 'نموذج واجهة التحميل الموحّد.',
        ),
      ),
      GoRoute(
        path: AppRoutes.error,
        name: 'error',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'حالة خطأ',
          subtitle: 'نموذج واجهة الخطأ الموحّد.',
        ),
      ),
      GoRoute(
        path: AppRoutes.empty,
        name: 'empty',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'لا توجد بيانات',
          subtitle: 'نموذج واجهة عدم وجود بيانات.',
        ),
      ),
      GoRoute(
        path: AppRoutes.forbidden,
        name: 'forbidden',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'لا توجد صلاحيات',
          subtitle: 'نموذج واجهة عدم وجود صلاحية وصول.',
        ),
      ),
    ];
