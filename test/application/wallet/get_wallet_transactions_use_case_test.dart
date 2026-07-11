import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/wallet/entities/wallet_transaction_entity.dart';
import 'package:edu_erp/src/domain/wallet/repositories/wallet_repository.dart';
import 'package:edu_erp/src/application/wallet/use_cases/get_wallet_transactions_use_case.dart';

class MockWalletRepository extends Mock implements WalletRepository {}

void main() {
  late MockWalletRepository repository;
  late GetWalletTransactionsUseCase useCase;

  setUp(() {
    repository = MockWalletRepository();
    useCase = GetWalletTransactionsUseCase(repository);
  });

  test('calls repository.getTransactions with correct walletId', () async {
    when(() => repository.getTransactions(1)).thenAnswer((_) async => []);
    await useCase(1);
    verify(() => repository.getTransactions(1)).called(1);
  });

  test('returns the transactions list', () async {
    final transactions = [
      WalletTransactionEntity(
        id: 1,
        walletId: 1,
        amount: 50,
        type: 'credit',
        timestamp: DateTime(2024, 1, 1),
      ),
    ];
    when(() => repository.getTransactions(1))
        .thenAnswer((_) async => transactions);
    final result = await useCase(1);
    expect(result, transactions);
  });

  test('returns empty list when no transactions', () async {
    when(() => repository.getTransactions(1)).thenAnswer((_) async => []);
    final result = await useCase(1);
    expect(result, isEmpty);
  });
}