import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/finance/entities/tuition_fee_entity.dart';
import 'package:edu_erp/src/domain/finance/repositories/finance_repository.dart';
import 'package:edu_erp/src/application/finance/use_cases/create_tuition_fee_use_case.dart';

class MockFinanceRepository extends Mock implements FinanceRepository {}

void main() {
  late MockFinanceRepository repository;
  late CreateTuitionFeeUseCase useCase;

  setUp(() {
    repository = MockFinanceRepository();
    useCase = CreateTuitionFeeUseCase(repository);
  });

  test('calls repository.createTuitionFee with correct entity', () async {
    final fee = TuitionFeeEntity(
      id: 0,
      studentId: 1,
      amount: 500,
      dueDate: DateTime(2024, 2, 1),
      isPaid: false,
    );
    when(() => repository.createTuitionFee(fee)).thenAnswer((_) async => 1);
    await useCase(fee);
    verify(() => repository.createTuitionFee(fee)).called(1);
  });

  test('returns the created tuition fee id', () async {
    final fee = TuitionFeeEntity(
      id: 0,
      studentId: 1,
      amount: 500,
      dueDate: DateTime(2024, 2, 1),
      isPaid: false,
    );
    when(() => repository.createTuitionFee(fee)).thenAnswer((_) async => 42);
    final result = await useCase(fee);
    expect(result, 42);
  });
}