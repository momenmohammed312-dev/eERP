class InventoryItemEntity {
  final int id;
  final String name;
  final String? sku;
  final int quantity;
  final double? unitPrice;
  final String? category;

  const InventoryItemEntity({
    required this.id,
    required this.name,
    this.sku,
    required this.quantity,
    this.unitPrice,
    this.category,
  });
}