import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/wallet/entities/wallet_entity.dart';
import 'package:edu_erp/src/domain/wallet/repositories/wallet_repository.dart';
import 'package:edu_erp/src/application/wallet/use_cases/get_wallet_by_student_use_case.dart';

class MockWalletRepository extends Mock implements WalletRepository {}

void main() {
  late MockWalletRepository repository;
  late GetWalletByStudentUseCase useCase;

  setUp(() {
    repository = MockWalletRepository();
    useCase = GetWalletByStudentUseCase(repository);
  });

  test('calls repository.getByStudentId with correct studentId', () async {
    when(() => repository.getByStudentId(1)).thenAnswer((_) async => null);
    await useCase(1);
    verify(() => repository.getByStudentId(1)).called(1);
  });

  test('returns the wallet when found', () async {
    const wallet = WalletEntity(id: 1, studentId: 1, balance: 100);
    when(() => repository.getByStudentId(1)).thenAnswer((_) async => wallet);
    final result = await useCase(1);
    expect(result, wallet);
  });

  test('returns null when wallet not found', () async {
    when(() => repository.getByStudentId(999)).thenAnswer((_) async => null);
    final result = await useCase(999);
    expect(result, isNull);
  });
}