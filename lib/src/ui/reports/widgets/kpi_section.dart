import '../../../imports/imports.dart';
import 'kpi_card.dart';

class KpiSection extends StatelessWidget {
  const KpiSection({
    super.key,
    required this.studentCount,
    required this.attendanceCount,
    required this.receiptCount,
  });

  final int studentCount;
  final int attendanceCount;
  final int receiptCount;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppSpacing.md,
      runSpacing: AppSpacing.md,
      children: [
        KpiCard(
          title: 'عدد الطلاب',
          value: '$studentCount',
          icon: Icons.people,
        ),
        KpiCard(
          title: 'سجلات الحضور',
          value: '$attendanceCount',
          icon: Icons.calendar_today,
        ),
        KpiCard(
          title: 'الإيصالات',
          value: '$receiptCount',
          icon: Icons.receipt,
        ),
      ],
    );
  }
}