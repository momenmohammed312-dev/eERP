abstract final class AppRoutes {
  AppRoutes._();

  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String loading = '/loading';
  static const String error = '/error';
  static const String empty = '/empty';
  static const String forbidden = '/forbidden';

  static const String home = dashboard;
  static const String dashboard = '/dashboard';

  static const String students = '/students';
  static const String studentProfile = '/students/:id';
  static const String studentProfileV2 = '/students/:id/v2';
  static const String studentForm = '/students/form';

  static const String teachers = '/teachers';
  static const String teacherProfile = '/teachers/:id';
  static const String teacherForm = '/teachers/form';

  static const String guardians = '/guardians';
  static const String guardianProfile = '/guardians/:id';
  static const String guardianForm = '/guardians/form';

  static const String employees = '/employees';
  static const String employeeProfile = '/employees/:id';
  static const String employeeForm = '/employees/form';

  static const String roles = '/roles';
  static const String roleProfile = '/roles/:id';
  static const String roleForm = '/roles/form';

  static const String userAccounts = '/accounts';
  static const String userAccountForm = '/accounts/form';

  static const String subjects = '/academic/subjects';
  static const String classrooms = '/academic/classrooms';
  static const String schedule = '/academic/schedule';
  static const String sectionAssignment = '/academic/sections';
  static const String examManagement = '/academic/exams';
  static const String gradeEntry = '/academic/grades';

  static const String staffAttendance = '/attendance/staff';
  static const String tuitionFees = '/finance/fees';
  static const String newReceipt = '/finance/receipts/new';
  static const String payroll = '/finance/payroll';
  static const String expenses = '/finance/expenses';
  static const String financialReportPrint = '/finance/reports/financial/print';
  static const String gradesReportPrint = '/finance/reports/grades/print';
  static const String wallet = '/wallet';
  static const String canteenSales = '/canteen/sales';
  static const String library = '/library';
  static const String borrowingLog = '/library/borrowing';
  static const String inventory = '/inventory';
  static const String newInventoryItem = '/inventory/items/new';
  static const String purchaseManagement = '/inventory/purchases';
  static const String suppliers = '/inventory/suppliers';
  static const String academicAttendanceReports = '/reports/academic-attendance';
  static const String financialSalesReports = '/reports/financial-sales';
  static const String performanceReports = '/reports/performance';
  static const String reportBuilder = '/reports/builder';
  static const String settings = '/settings';
  static const String userManagement = '/settings/users';
  static const String notifications = '/notifications';
}