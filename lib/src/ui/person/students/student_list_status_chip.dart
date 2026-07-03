import '../../../imports/imports.dart';

class StudentListStatusChip extends StatelessWidget {
  const StudentListStatusChip({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    final active = label == 'نشط';
    final color = active ? context.appColors.success : context.appColors.warning;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: AppBorders.button,
        border: Border.all(color: color.withValues(alpha: 0.4)),
      ),
      child: Text(label, style: TextStyle(color: color, fontSize: 12.sp)),
    );
  }
}
