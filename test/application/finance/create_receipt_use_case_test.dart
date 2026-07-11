import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/finance/entities/receipt_entity.dart';
import 'package:edu_erp/src/domain/finance/repositories/finance_repository.dart';
import 'package:edu_erp/src/application/finance/use_cases/create_receipt_use_case.dart';

class MockFinanceRepository extends Mock implements FinanceRepository {}

void main() {
  late MockFinanceRepository repository;
  late CreateReceiptUseCase useCase;

  setUp(() {
    repository = MockFinanceRepository();
    useCase = CreateReceiptUseCase(repository);
  });

  test('calls repository.createReceipt with correct entity', () async {
    final receipt = ReceiptEntity(
      id: 0,
      studentId: 1,
      amount: 500,
      receiptDate: DateTime(2024, 1, 1),
      receivedBy: 1,
    );
    when(() => repository.createReceipt(receipt)).thenAnswer((_) async => 1);
    await useCase(receipt);
    verify(() => repository.createReceipt(receipt)).called(1);
  });

  test('returns the created receipt id', () async {
    final receipt = ReceiptEntity(
      id: 0,
      studentId: 1,
      amount: 500,
      receiptDate: DateTime(2024, 1, 1),
      receivedBy: 1,
    );
    when(() => repository.createReceipt(receipt)).thenAnswer((_) async => 42);
    final result = await useCase(receipt);
    expect(result, 42);
  });
}