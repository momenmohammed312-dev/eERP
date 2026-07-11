import 'package:flutter/material.dart';
import '../../domain/student/entities/student_entity.dart';
import '../../domain/teacher/entities/teacher_entity.dart';
import '../../domain/finance/entities/receipt_entity.dart';
import '../../domain/attendance/entities/attendance_record_entity.dart';

class StatItem {
  const StatItem({required this.title, required this.value, this.subTitle, required this.icon, required this.color});
  final String title;
  final String value;
  final String? subTitle;
  final IconData icon;
  final Color color;
}

List<StatItem> computeDashboardStats({
  required List<StudentEntity> students,
  required List<TeacherEntity> teachers,
  required List<ReceiptEntity> receipts,
  required List<AttendanceRecordEntity> attendance,
}) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final tomorrow = today.add(const Duration(days: 1));

  final todayReceipts = receipts.where((r) => !r.receiptDate.isBefore(today) && r.receiptDate.isBefore(tomorrow)).toList();
  final totalReceipts = todayReceipts.fold<double>(0, (sum, r) => sum + r.amount);
  final todayAttendance = attendance.where((a) => !a.date.isBefore(today) && a.date.isBefore(tomorrow)).toList();
  final presentCount = todayAttendance.where((a) => a.status == 'present').length;
  final rate = todayAttendance.isEmpty
      ? 0.0
      : (presentCount / todayAttendance.length * 100);

  return [
    StatItem(
      title: 'إجمالي الطلاب المسجلين',
      value: students.length.toString(),
      subTitle: '${students.where((s) => s.status).length} نشط',
      icon: Icons.school_outlined,
      color: Colors.blue,
    ),
    StatItem(
      title: 'المعلمون النشطون',
      value: teachers.length.toString(),
      subTitle: '${teachers.where((t) => t.status).length} نشط',
      icon: Icons.person_outline,
      color: Colors.purple,
    ),
    StatItem(
      title: 'المقبوضات المالية اليوم',
      value: '${totalReceipts.toStringAsFixed(0)} ج.م',
      subTitle: '${todayReceipts.length} سند قبض',
      icon: Icons.payments_outlined,
      color: Colors.green,
    ),
    StatItem(
      title: 'نسبة الحضور اليومي',
      value: '${rate.toStringAsFixed(1)}%',
      subTitle: '$presentCount / ${todayAttendance.length}',
      icon: Icons.calendar_month_outlined,
      color: Colors.orange,
    ),
  ];
}
