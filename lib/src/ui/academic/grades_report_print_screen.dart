import 'package:printing/printing.dart';
import '../../imports/imports.dart';
import 'package:edu_erp/src/infrastructure/providers/academic_providers.dart';
import 'package:edu_erp/src/infrastructure/providers/settings_providers.dart';
import 'widgets/grades_report_pdf_builder.dart';

class GradesReportPrintScreen extends ConsumerStatefulWidget {
  const GradesReportPrintScreen({super.key});
  @override
  ConsumerState<GradesReportPrintScreen> createState() =>
      _GradesReportPrintScreenState();
}

class _GradesReportPrintScreenState
    extends ConsumerState<GradesReportPrintScreen> {
  String? _error;

  @override
  void initState() {
    super.initState();
    _generatePdf();
  }

  Future<void> _generatePdf() async {
    try {
      final grades = await ref.read(getAllGradesUseCase)();
      final setting = await ref.read(getSettingByKeyUseCase)('center_name');
      final centerName = setting?.value ?? 'اسم المركز';
      final bytes = await buildGradesReportPdf(
        centerName: centerName,
        grades: grades,
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
