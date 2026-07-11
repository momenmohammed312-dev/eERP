import 'package:edu_erp/src/domain/attendance/entities/attendance_record_entity.dart';
import 'package:edu_erp/src/application/attendance/use_cases/get_all_attendance_records_use_case.dart';
import '../../imports/imports.dart';

class AttendanceTable extends StatelessWidget {
  const AttendanceTable({super.key, required this.getAll});
  final GetAllAttendanceRecordsUseCase getAll;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AttendanceRecordEntity>>(
      future: getAll(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final records = snap.data ?? <AttendanceRecordEntity>[];
        if (records.isEmpty) {
          return const AppEmptyState(title: 'لا توجد سجلات حضور');
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['الطالب', 'التاريخ', 'الحالة', 'وقت الدخول', 'وقت الخروج'],
              rows: records.map((r) => [
                Text('#${r.studentId}'),
                Text(r.date.toString().substring(0, 10)),
                Text(_statusLabel(r.status)),
                Text(r.checkInTime ?? '-'),
                Text(r.checkOutTime ?? '-'),
              ]).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${records.length} سجل',
                style: context.theme.textTheme.bodySmall?.copyWith(
                    color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }

  String _statusLabel(String s) => switch (s) {
    'present' => 'حاضر', 'absent' => 'غائب', 'late' => 'متأخر', 'excused' => 'معذور', _ => s,
  };
}