class WalletTransactionEntity {
  final int id;
  final int walletId;
  final double amount;
  final String type;
  final DateTime timestamp;
  final String? description;

  const WalletTransactionEntity({
    required this.id,
    required this.walletId,
    required this.amount,
    required this.type,
    required this.timestamp,
    this.description,
  });
}