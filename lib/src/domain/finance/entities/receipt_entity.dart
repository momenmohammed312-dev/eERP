class ReceiptEntity {
  final int id;
  final int studentId;
  final double amount;
  final DateTime receiptDate;
  final String? paymentMethod;
  final String? notes;
  final int receivedBy;

  const ReceiptEntity({
    required this.id,
    required this.studentId,
    required this.amount,
    required this.receiptDate,
    this.paymentMethod,
    this.notes,
    required this.receivedBy,
  });
}