import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../app_routes.dart';
import '../../ui/wallet/wallet_screen.dart';
import '../../ui/canteen/canteen_sales_screen.dart';
import '../../ui/library/library_screen.dart';
import '../../ui/library/borrowing_log_screen.dart';
import '../../ui/inventory/inventory_screen.dart';
import '../../ui/inventory/suppliers_screen.dart';
import '../../ui/inventory/purchase_management_screen.dart';
import '../../ui/inventory/new_inventory_item_screen.dart';
import '../../ui/reports/academic_attendance_report_screen.dart';
import '../../ui/reports/financial_sales_report_screen.dart';
import '../../ui/reports/performance_report_screen.dart';
import '../../ui/reports/report_builder_screen.dart';
import '../../ui/attendance/staff_attendance_screen.dart';

GoRoute _route(String path, String name, Widget Function() builder) =>
    GoRoute(path: path, name: name, builder: (_, __) => builder());

List<RouteBase> buildFeatureRoutes() => [
      _route(AppRoutes.canteenSales, 'canteenSales', () => const CanteenSalesScreen()),
      _route(AppRoutes.staffAttendance, 'staffAttendance', () => const StaffAttendanceScreen()),
      _route(AppRoutes.wallet, 'wallet', () => const WalletScreen()),
      _route(AppRoutes.library, 'library', () => const LibraryScreen()),
      _route(AppRoutes.borrowingLog, 'borrowingLog', () => const BorrowingLogScreen()),
      _route(AppRoutes.inventory, 'inventory', () => const InventoryScreen()),
      _route(AppRoutes.newInventoryItem, 'newInventoryItem', () => const NewInventoryItemScreen()),
      _route(AppRoutes.purchaseManagement, 'purchaseManagement', () => const PurchaseManagementScreen()),
      _route(AppRoutes.suppliers, 'suppliers', () => const SuppliersScreen()),
      _route(AppRoutes.academicAttendanceReports, 'academicAttendanceReports', () => const AcademicAttendanceReportScreen()),
      _route(AppRoutes.financialSalesReports, 'financialSalesReports', () => const FinancialSalesReportScreen()),
      _route(AppRoutes.performanceReports, 'performanceReports', () => const PerformanceReportScreen()),
      _route(AppRoutes.reportBuilder, 'reportBuilder', () => const ReportBuilderScreen()),
    ];
