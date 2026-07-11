import 'package:edu_erp/src/domain/attendance/entities/attendance_record_entity.dart';
import '../../../imports/imports.dart';

class AttendanceReportTable extends StatelessWidget {
  const AttendanceReportTable({super.key, required this.records});

  final List<AttendanceRecordEntity> records;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    if (records.isEmpty) {
      return Container(
        padding: EdgeInsets.all(AppSpacing.xl),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: AppBorders.card,
          border: Border.all(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
          ),
        ),
        child: const AppEmptyState(title: 'لا توجد سجلات حضور'),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppDataTable(
          columns: const ['الطالب', 'التاريخ', 'الحالة', 'الحضور', 'الخروج'],
          rows: records.map((r) => [
            Text('#${r.studentId}'),
            Text(r.date.toString().substring(0, 10)),
            Text(_statusLabel(r.status)),
            Text(r.checkInTime ?? '-'),
            Text(r.checkOutTime ?? '-'),
          ]).toList(),
        ),
        SizedBox(height: AppSpacing.sm),
        Text(
          'إجمالي السجلات: ${records.length}',
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
            letterSpacing: 0.02,
          ),
        ),
      ],
    );
  }

  String _statusLabel(String s) => switch (s) {
    'present' => 'حاضر',
    'absent' => 'غائب',
    'late' => 'متأخر',
    'excused' => 'معذور',
    _ => s,
  };
}