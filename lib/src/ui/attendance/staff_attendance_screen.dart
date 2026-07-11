import '../../imports/imports.dart';
import 'package:edu_erp/src/infrastructure/providers/attendance_providers.dart';
import 'attendance_table.dart';

class StaffAttendanceScreen extends ConsumerWidget {
  const StaffAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.watch(getAllAttendanceRecordsUseCase);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('سجل الحضور', style: context.theme.textTheme.headlineMedium),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add, size: 18),
                label: const Text('تسجيل حضور'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          AttendanceTable(getAll: getAll),
        ],
      ),
    );
  }
}