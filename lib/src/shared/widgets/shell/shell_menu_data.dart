import 'package:flutter/material.dart';
import '../../../routing/app_routes.dart';

class MenuGroup {
  const MenuGroup({required this.title, required this.items});
  final String title;
  final List<MenuItem> items;
}

class MenuItem {
  const MenuItem({
    required this.title,
    required this.icon,
    required this.route,
  });
  final String title;
  final IconData icon;
  final String route;
}

const List<MenuGroup> appMenuGroups = [
  MenuGroup(
    title: 'الرئيسية',
    items: [
      MenuItem(
        title: 'لوحة التحكم',
        icon: Icons.dashboard_outlined,
        route: AppRoutes.dashboard,
      ),
    ],
  ),
  MenuGroup(
    title: 'المستخدمين',
    items: [
      MenuItem(
        title: 'الطلاب',
        icon: Icons.school_outlined,
        route: AppRoutes.students,
      ),
      MenuItem(
        title: 'المعلمون',
        icon: Icons.person_outline,
        route: AppRoutes.teachers,
      ),
      MenuItem(
        title: 'أولياء الأمور',
        icon: Icons.family_restroom,
        route: AppRoutes.guardians,
      ),
      MenuItem(
        title: 'الموظفون',
        icon: Icons.badge_outlined,
        route: AppRoutes.employees,
      ),
    ],
  ),
  MenuGroup(
    title: 'الصلاحيات',
    items: [
      MenuItem(
        title: 'الأدوار',
        icon: Icons.admin_panel_settings_outlined,
        route: AppRoutes.roles,
      ),
      MenuItem(
        title: 'حسابات المستخدمين',
        icon: Icons.manage_accounts_outlined,
        route: AppRoutes.userAccounts,
      ),
    ],
  ),
  MenuGroup(
    title: 'الأكاديميات',
    items: [
      MenuItem(
        title: 'المواد الدراسية',
        icon: Icons.menu_book_outlined,
        route: AppRoutes.subjects,
      ),
      MenuItem(
        title: 'الفصول الدراسية',
        icon: Icons.meeting_room_outlined,
        route: AppRoutes.classrooms,
      ),
      MenuItem(
        title: 'الجدول الدراسي',
        icon: Icons.calendar_month_outlined,
        route: AppRoutes.schedule,
      ),
    ],
  ),
  MenuGroup(
    title: 'المالية',
    items: [
      MenuItem(
        title: 'رسوم الطلاب',
        icon: Icons.payments_outlined,
        route: AppRoutes.tuitionFees,
      ),
      MenuItem(
        title: 'سندات القبض',
        icon: Icons.receipt_outlined,
        route: AppRoutes.newReceipt,
      ),
      MenuItem(
        title: 'الرواتب',
        icon: Icons.account_balance_wallet_outlined,
        route: AppRoutes.payroll,
      ),
      MenuItem(
        title: 'المصروفات',
        icon: Icons.money_off_outlined,
        route: AppRoutes.expenses,
      ),
      MenuItem(
        title: 'المقصف',
        icon: Icons.shopping_cart_outlined,
        route: AppRoutes.canteenSales,
      ),
    ],
  ),
  MenuGroup(
    title: 'الحضور',
    items: [
      MenuItem(
        title: 'سجل الحضور',
        icon: Icons.fact_check_outlined,
        route: AppRoutes.staffAttendance,
      ),
    ],
  ),
  MenuGroup(
    title: 'المحفظة',
    items: [
      MenuItem(
        title: 'المحفظة الإلكترونية',
        icon: Icons.account_balance_outlined,
        route: AppRoutes.wallet,
      ),
    ],
  ),
  MenuGroup(
    title: 'المكتبة',
    items: [
      MenuItem(
        title: 'الكتب',
        icon: Icons.local_library_outlined,
        route: AppRoutes.library,
      ),
      MenuItem(
        title: 'الاستعارة',
        icon: Icons.swap_horiz_outlined,
        route: AppRoutes.borrowingLog,
      ),
    ],
  ),
  MenuGroup(
    title: 'المخزون',
    items: [
      MenuItem(
        title: 'الأصناف',
        icon: Icons.inventory_2_outlined,
        route: AppRoutes.inventory,
      ),
      MenuItem(
        title: 'المشتريات',
        icon: Icons.shopping_bag_outlined,
        route: AppRoutes.purchaseManagement,
      ),
      MenuItem(
        title: 'الموردين',
        icon: Icons.people_outline,
        route: AppRoutes.suppliers,
      ),
    ],
  ),
  MenuGroup(
    title: 'التقارير',
    items: [
      MenuItem(
        title: 'تقارير الأداء',
        icon: Icons.bar_chart_outlined,
        route: AppRoutes.performanceReports,
      ),
    ],
  ),
  MenuGroup(
    title: 'النظام',
    items: [
      MenuItem(
        title: 'الإعدادات العامة',
        icon: Icons.settings_outlined,
        route: AppRoutes.settings,
      ),
      MenuItem(
        title: 'الإشعارات',
        icon: Icons.notifications_outlined,
        route: AppRoutes.notifications,
      ),
    ],
  ),
];
