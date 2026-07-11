import '../../imports/imports.dart';
import '../../ui/attendance/providers/attendance_providers.dart';
import 'package:edu_erp/src/domain/attendance/entities/attendance_record_entity.dart';
import 'widgets/attendance_report_table.dart';
import 'widgets/report_error_state.dart';
import 'widgets/report_header.dart';

class AcademicAttendanceReportScreen extends ConsumerStatefulWidget {
  const AcademicAttendanceReportScreen({super.key});

  @override
  ConsumerState<AcademicAttendanceReportScreen> createState() =>
      _AcademicAttendanceReportScreenState();
}

class _AcademicAttendanceReportScreenState
    extends ConsumerState<AcademicAttendanceReportScreen> {
  bool _isLoading = true;
  String? _error;
  List<AttendanceRecordEntity> _records = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final getAll = ref.read(getAllAttendanceRecordsUseCase);
      final records = await getAll();
      if (mounted) {
        setState(() {
          _records = records;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReportHeader(title: 'تقارير الحضور الأكاديمي', onRefresh: _loadData),
          SizedBox(height: AppSpacing.xl),
          if (_isLoading)
            const Center(child: CircularProgressIndicator())
          else if (_error != null)
            ReportErrorState(error: _error!, onRetry: _loadData)
          else
            AttendanceReportTable(records: _records),
        ],
      ),
    );
  }
}