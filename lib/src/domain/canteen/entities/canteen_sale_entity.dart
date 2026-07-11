class CanteenSaleEntity {
  final int id;
  final int studentId;
  final double amount;
  final DateTime saleDate;
  final String? items;
  final int recordedBy;

  const CanteenSaleEntity({
    required this.id,
    required this.studentId,
    required this.amount,
    required this.saleDate,
    this.items,
    required this.recordedBy,
  });
}