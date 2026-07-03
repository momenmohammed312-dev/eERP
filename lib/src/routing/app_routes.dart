/// Centralized route path constants for GoRouter.
///
/// Use these variables instead of raw strings throughout the app.
/// Example: `context.go(AppRoutes.onboarding)` instead of `context.go('/')`.
abstract final class AppRoutes {
  AppRoutes._();

  // Root States
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String loading = '/loading';
  static const String error = '/error';
  static const String empty = '/empty';
  static const String forbidden = '/forbidden';

  // Inside Shell Core
  static const String home = dashboard;
  static const String dashboard = '/dashboard';

  // Students
  static const String students = '/students';
  static const String studentProfile = '/students/:id';
  static const String studentProfileV2 = '/students/:id/v2';
  static const String studentForm = '/students/form';

  // Teachers
  static const String teachers = '/teachers';
  static const String teacherProfile = '/teachers/:id';
  static const String teacherForm = '/teachers/form';

  // Academic
  static const String subjects = '/academic/subjects';
  static const String classrooms = '/academic/classrooms';
  static const String schedule = '/academic/schedule';
  static const String sectionAssignment = '/academic/sections';
  static const String examManagement = '/academic/exams';
  static const String gradeEntry = '/academic/grades';

  // Attendance
  static const String staffAttendance = '/attendance/staff';

  // Finance
  static const String tuitionFees = '/finance/fees';
  static const String newReceipt = '/finance/receipts/new';
  static const String payroll = '/finance/payroll';
  static const String expenses = '/finance/expenses';
  static const String financialReportPrint = '/finance/reports/financial/print';
  static const String gradesReportPrint = '/finance/reports/grades/print';

  // Wallet
  static const String wallet = '/wallet';

  // Canteen
  static const String canteenSales = '/canteen/sales';

  // Library
  static const String library = '/library';
  static const String borrowingLog = '/library/borrowing';

  // Inventory
  static const String inventory = '/inventory';
  static const String newInventoryItem = '/inventory/items/new';
  static const String purchaseManagement = '/inventory/purchases';
  static const String suppliers = '/inventory/suppliers';

  // Reports
  static const String academicAttendanceReports = '/reports/academic-attendance';
  static const String financialSalesReports = '/reports/financial-sales';
  static const String performanceReports = '/reports/performance';
  static const String reportBuilder = '/reports/builder';

  // Settings & Notifications
  static const String settings = '/settings';
  static const String userManagement = '/settings/users';
  static const String notifications = '/notifications';
}
