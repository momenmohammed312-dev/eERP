import '../../imports/imports.dart';
import 'package:edu_erp/src/infrastructure/providers/student_providers.dart';
import 'package:edu_erp/src/infrastructure/providers/attendance_providers.dart';
import 'package:edu_erp/src/infrastructure/providers/finance_providers.dart';
import 'widgets/kpi_section.dart';
import 'widgets/report_error_state.dart';
import 'widgets/report_header.dart';

class PerformanceReportScreen extends ConsumerStatefulWidget {
  const PerformanceReportScreen({super.key});

  @override
  ConsumerState<PerformanceReportScreen> createState() =>
      _PerformanceReportScreenState();
}

class _PerformanceReportScreenState
    extends ConsumerState<PerformanceReportScreen> {
  bool _isLoading = true;
  String? _error;
  int _studentCount = 0;
  int _attendanceCount = 0;
  int _receiptCount = 0;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() => _isLoading = true);
    try {
      final results = await Future.wait([
        ref.read(getAllStudentsUseCase)(),
        ref.read(getAllAttendanceRecordsUseCase)(),
        ref.read(getAllReceiptsUseCase)(),
      ]);
      if (mounted) {
        setState(() {
          _studentCount = (results[0] as List).length;
          _attendanceCount = (results[1] as List).length;
          _receiptCount = (results[2] as List).length;
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
          ReportHeader(title: 'تقارير الأداء العام', onRefresh: _loadData),
          SizedBox(height: AppSpacing.xl),
          if (_isLoading) const Center(child: CircularProgressIndicator())
          else if (_error != null) ReportErrorState(error: _error!, onRetry: _loadData)
          else KpiSection(studentCount: _studentCount, attendanceCount: _attendanceCount, receiptCount: _receiptCount),
        ],
      ),
    );
  }
}