class ExpenseEntity {
  final int id;
  final String description;
  final double amount;
  final DateTime expenseDate;
  final String? category;
  final int approvedBy;

  const ExpenseEntity({
    required this.id,
    required this.description,
    required this.amount,
    required this.expenseDate,
    this.category,
    required this.approvedBy,
  });
}