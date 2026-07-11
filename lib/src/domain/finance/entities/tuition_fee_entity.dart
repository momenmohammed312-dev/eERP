class TuitionFeeEntity {
  final int id;
  final int studentId;
  final double amount;
  final DateTime dueDate;
  final bool isPaid;
  final DateTime? paidAt;
  final String? notes;

  const TuitionFeeEntity({
    required this.id,
    required this.studentId,
    required this.amount,
    required this.dueDate,
    required this.isPaid,
    this.paidAt,
    this.notes,
  });
}