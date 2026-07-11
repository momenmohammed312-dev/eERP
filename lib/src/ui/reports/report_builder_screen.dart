import '../../imports/imports.dart';
import 'widgets/filter_form.dart';

class ReportBuilderScreen extends StatefulWidget {
  const ReportBuilderScreen({super.key});

  @override
  State<ReportBuilderScreen> createState() => _ReportBuilderScreenState();
}

class _ReportBuilderScreenState extends State<ReportBuilderScreen> {
  DateTimeRange? _dateRange;
  String? _selectedDomain;

  final _domains = const [
    'الحضور',
    'المالية',
    'المطعم',
    'المكتبة',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'بناء التقارير المخصصة',
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w600,
              letterSpacing: -0.02,
            ),
          ),
          SizedBox(height: AppSpacing.sm),
          Text(
            'إنشاء تقارير مخصصة حسب الفلاتر المحددة',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              letterSpacing: 0.02,
            ),
          ),
          SizedBox(height: AppSpacing.xl),
          FilterForm(
            dateRange: _dateRange,
            selectedDomain: _selectedDomain,
            domains: _domains,
            onDateRangeChanged: (r) => setState(() => _dateRange = r),
            onDomainChanged: (d) => setState(() => _selectedDomain = d),
            onExport: _exportReport,
            onPickDateRange: _pickDateRange,
          ),
        ],
      ),
    );
  }

  void _exportReport() {
    context.showTypedSnackBar(
      'جاري إعداد التقرير...',
      type: SnackBarType.info,
    );
  }

  Future<void> _pickDateRange() async {
    final now = DateTime.now();
    final picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(now.year - 1),
      lastDate: now,
    );
    if (mounted && picked != null) setState(() => _dateRange = picked);
  }
}