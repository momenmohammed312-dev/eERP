class AttendanceRecordEntity {
  final int id;
  final int studentId;
  final DateTime date;
  final String status;
  final String? checkInTime;
  final String? checkOutTime;
  final String? notes;
  final int recordedBy;

  const AttendanceRecordEntity({
    required this.id,
    required this.studentId,
    required this.date,
    required this.status,
    this.checkInTime,
    this.checkOutTime,
    this.notes,
    required this.recordedBy,
  });
}