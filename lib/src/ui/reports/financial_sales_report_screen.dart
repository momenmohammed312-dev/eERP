import '../../imports/imports.dart';
import '../../ui/canteen/providers/canteen_providers.dart';
import '../../ui/finance/providers/finance_providers.dart';
import 'package:edu_erp/src/domain/canteen/entities/canteen_sale_entity.dart';
import 'package:edu_erp/src/domain/finance/entities/receipt_entity.dart';
import 'widgets/financial_sales_summary.dart';
import 'widgets/report_error_state.dart';
import 'widgets/report_header.dart';

class FinancialSalesReportScreen extends ConsumerStatefulWidget {
  const FinancialSalesReportScreen({super.key});

  @override
  ConsumerState<FinancialSalesReportScreen> createState() =>
      _FinancialSalesReportScreenState();
}

class _FinancialSalesReportScreenState
    extends ConsumerState<FinancialSalesReportScreen> {
  bool _isLoading = true;
  String? _error;
  List<CanteenSaleEntity> _canteenSales = [];
  List<ReceiptEntity> _receipts = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() => _isLoading = true);
    try {
      final results = await Future.wait([
        ref.read(getAllCanteenSalesUseCase)(),
        ref.read(getAllReceiptsUseCase)(),
      ]);
      if (mounted) {
        setState(() {
          _canteenSales = results[0] as List<CanteenSaleEntity>;
          _receipts = results[1] as List<ReceiptEntity>;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) setState(() { _error = e.toString(); _isLoading = false; });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReportHeader(title: 'التقارير المالية والمبيعات', onRefresh: _loadData),
          SizedBox(height: AppSpacing.xl),
          if (_isLoading) const Center(child: CircularProgressIndicator())
          else if (_error != null) ReportErrorState(error: _error!, onRetry: _loadData)
          else FinancialSalesSummary(canteenSales: _canteenSales, receipts: _receipts),
        ],
      ),
    );
  }
}