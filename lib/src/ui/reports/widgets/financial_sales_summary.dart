import 'package:edu_erp/src/domain/canteen/entities/canteen_sale_entity.dart';
import 'package:edu_erp/src/domain/finance/entities/receipt_entity.dart';
import '../../../imports/imports.dart';
import 'canteen_sales_table.dart';
import 'receipts_table.dart';

class FinancialSalesSummary extends StatelessWidget {
  const FinancialSalesSummary({
    super.key,
    required this.canteenSales,
    required this.receipts,
  });

  final List<CanteenSaleEntity> canteenSales;
  final List<ReceiptEntity> receipts;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    if (canteenSales.isEmpty && receipts.isEmpty) {
      return Container(
        padding: EdgeInsets.all(AppSpacing.xl),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: AppBorders.card,
          border: Border.all(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
          ),
        ),
        child: const AppEmptyState(title: 'لا توجد بيانات مالية'),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (canteenSales.isNotEmpty) ...[
          Text(
            'مبيعات المطعم',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              letterSpacing: -0.02,
            ),
          ),
          SizedBox(height: AppSpacing.sm),
          CanteenSalesTable(sales: canteenSales),
          SizedBox(height: AppSpacing.xl),
        ],
        if (receipts.isNotEmpty) ...[
          Text(
            'الإيصالات',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              letterSpacing: -0.02,
            ),
          ),
          SizedBox(height: AppSpacing.sm),
          ReceiptsTable(receipts: receipts),
        ],
      ],
    );
  }
}