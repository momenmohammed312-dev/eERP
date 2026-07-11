import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/wallet/entities/wallet_entity.dart';
import 'package:edu_erp/src/domain/wallet/repositories/wallet_repository.dart';
import 'package:edu_erp/src/application/wallet/use_cases/create_wallet_use_case.dart';

class MockWalletRepository extends Mock implements WalletRepository {}

void main() {
  late MockWalletRepository repository;
  late CreateWalletUseCase useCase;

  setUp(() {
    repository = MockWalletRepository();
    useCase = CreateWalletUseCase(repository);
  });

  test('calls repository.createWallet with correct entity', () async {
    const wallet = WalletEntity(id: 0, studentId: 1, balance: 0);
    when(() => repository.createWallet(wallet)).thenAnswer((_) async => 1);
    await useCase(wallet);
    verify(() => repository.createWallet(wallet)).called(1);
  });

  test('returns the created wallet id', () async {
    const wallet = WalletEntity(id: 0, studentId: 1, balance: 0);
    when(() => repository.createWallet(wallet)).thenAnswer((_) async => 42);
    final result = await useCase(wallet);
    expect(result, 42);
  });
}