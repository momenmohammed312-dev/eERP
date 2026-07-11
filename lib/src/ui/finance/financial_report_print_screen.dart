import 'package:printing/printing.dart';
import '../../imports/imports.dart';
import 'package:edu_erp/src/infrastructure/providers/finance_providers.dart';
import 'package:edu_erp/src/infrastructure/providers/settings_providers.dart';
import 'widgets/financial_report_pdf_builder.dart';

class FinancialReportPrintScreen extends ConsumerStatefulWidget {
  const FinancialReportPrintScreen({super.key});
  @override
  ConsumerState<FinancialReportPrintScreen> createState() =>
      _FinancialReportPrintScreenState();
}

class _FinancialReportPrintScreenState
    extends ConsumerState<FinancialReportPrintScreen> {
  String? _error;

  @override
  void initState() {
    super.initState();
    _generatePdf();
  }

  Future<void> _generatePdf() async {
    try {
      final receipts = await ref.read(getAllReceiptsUseCase)();
      final fees = await ref.read(getAllTuitionFeesUseCase)();
      final setting = await ref.read(getSettingByKeyUseCase)('center_name');
      final centerName = setting?.value ?? 'اسم المركز';
      final bytes = await buildFinancialReportPdf(
        centerName: centerName,
        receipts: receipts,
        fees: fees,
      );
      if (!mounted) return;
      await Printing.layoutPdf(onLayout: (_) async => bytes);
    } catch (e) {
      if (!mounted) return;
      setState(() => _error = 'خطأ في إنشاء التقرير: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_error != null) {
      return Center(child: AppEmptyState(title: _error!));
    }
    return const Center(child: CircularProgressIndicator());
  }
}
