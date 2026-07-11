class PurchaseOrderEntity {
  final int id;
  final int itemId;
  final int quantity;
  final double totalCost;
  final DateTime orderDate;
  final int? supplierId;
  final String? status;

  const PurchaseOrderEntity({
    required this.id,
    required this.itemId,
    required this.quantity,
    required this.totalCost,
    required this.orderDate,
    this.supplierId,
    this.status,
  });
}