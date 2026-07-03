import 'package:go_router/go_router.dart';
import 'package:edu_erp/src/routing/app_routes.dart';
import 'package:edu_erp/src/ui/home/dashboard_screen.dart';
import 'package:edu_erp/src/ui/shared/feature_scaffold_screen.dart';

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
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'رسوم الطلاب',
          subtitle: 'إدارة الرسوم الدراسية والمستحقات.',
        ),
      ),
      GoRoute(
        path: AppRoutes.canteenSales,
        name: 'canteenSales',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'مبيعات المقصف',
          subtitle: 'تسجيل مبيعات المقصف اليومية.',
        ),
      ),
      GoRoute(
        path: AppRoutes.staffAttendance,
        name: 'staffAttendance',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'سجل حضور الموظفين والمعلمين',
          subtitle: 'متابعة الحضور والانصراف اليومية.',
        ),
      ),
      GoRoute(
        path: AppRoutes.newReceipt,
        name: 'newReceipt',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'سند قبض جديد',
          subtitle: 'إدخال سندات القبض وتوثيق المدفوعات.',
        ),
      ),
      GoRoute(
        path: AppRoutes.payroll,
        name: 'payroll',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'إدارة الرواتب',
          subtitle: 'إدارة الرواتب والاستقطاعات والبدلات.',
        ),
      ),
      GoRoute(
        path: AppRoutes.expenses,
        name: 'expenses',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'إدارة المصروفات',
          subtitle: 'متابعة المصروفات اليومية والتشغيلية.',
        ),
      ),
      GoRoute(
        path: AppRoutes.financialReportPrint,
        name: 'financialReportPrint',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'التقرير المالي - نسخة الطباعة',
          subtitle: 'معاينة نسخة الطباعة للتقرير المالي.',
        ),
      ),
      GoRoute(
        path: AppRoutes.gradesReportPrint,
        name: 'gradesReportPrint',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'كشف درجات الطالب - نسخة الطباعة',
          subtitle: 'معاينة نسخة الطباعة لكشف الدرجات.',
        ),
      ),
      GoRoute(
        path: AppRoutes.wallet,
        name: 'wallet',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'المحفظة الإلكترونية',
          subtitle: 'عرض رصيد الطالب وسجل المعاملات.',
        ),
      ),
      GoRoute(
        path: AppRoutes.library,
        name: 'library',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'إدارة المكتبة',
          subtitle: 'متابعة الكتب والفهرسة الداخلية.',
        ),
      ),
      GoRoute(
        path: AppRoutes.borrowingLog,
        name: 'borrowingLog',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'سجل الاستعارة',
          subtitle: 'تسجيل عمليات الاستعارة والإرجاع.',
        ),
      ),
      GoRoute(
        path: AppRoutes.inventory,
        name: 'inventory',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'إدارة المخزون',
          subtitle: 'عرض الأصناف والكميات المتاحة.',
        ),
      ),
      GoRoute(
        path: AppRoutes.newInventoryItem,
        name: 'newInventoryItem',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'إضافة صنف مخزون جديد',
          subtitle: 'إدخال صنف جديد ضمن المخزون.',
        ),
      ),
      GoRoute(
        path: AppRoutes.purchaseManagement,
        name: 'purchaseManagement',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'إدارة المشتريات',
          subtitle: 'متابعة أوامر الشراء والموردين.',
        ),
      ),
      GoRoute(
        path: AppRoutes.suppliers,
        name: 'suppliers',
        builder: (_, __) => const FeatureScaffoldScreen(
          title: 'سجل الموردين',
          subtitle: 'إدارة الموردين وبيانات الاتصال.',
        ),
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
