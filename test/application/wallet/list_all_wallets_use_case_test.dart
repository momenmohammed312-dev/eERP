import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/wallet/entities/wallet_entity.dart';
import 'package:edu_erp/src/domain/wallet/repositories/wallet_repository.dart';
import 'package:edu_erp/src/application/wallet/use_cases/list_all_wallets_use_case.dart';

class MockWalletRepository extends Mock implements WalletRepository {}

void main() {
  late MockWalletRepository repository;
  late ListAllWalletsUseCase useCase;

  setUp(() {
    repository = MockWalletRepository();
    useCase = ListAllWalletsUseCase(repository);
  });

  test('calls repository.getAllWallets()', () async {
    when(() => repository.getAllWallets()).thenAnswer((_) async => []);
    await useCase();
    verify(() => repository.getAllWallets()).called(1);
  });

  test('returns the list from the repository', () async {
    final wallets = [
      const WalletEntity(id: 1, studentId: 1, balance: 100),
      const WalletEntity(id: 2, studentId: 2, balance: 50),
    ];
    when(() => repository.getAllWallets()).thenAnswer((_) async => wallets);
    final result = await useCase();
    expect(result, wallets);
  });
}