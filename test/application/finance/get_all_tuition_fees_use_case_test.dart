import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/finance/entities/tuition_fee_entity.dart';
import 'package:edu_erp/src/domain/finance/repositories/finance_repository.dart';
import 'package:edu_erp/src/application/finance/use_cases/get_all_tuition_fees_use_case.dart';

class MockFinanceRepository extends Mock implements FinanceRepository {}

void main() {
  late MockFinanceRepository repository;
  late GetAllTuitionFeesUseCase useCase;

  setUp(() {
    repository = MockFinanceRepository();
    useCase = GetAllTuitionFeesUseCase(repository);
  });

  test('calls repository.getAllTuitionFees()', () async {
    when(() => repository.getAllTuitionFees()).thenAnswer((_) async => []);
    await useCase();
    verify(() => repository.getAllTuitionFees()).called(1);
  });

  test('returns the list from the repository', () async {
    final fees = [
      TuitionFeeEntity(
        id: 1,
        studentId: 1,
        amount: 500,
        dueDate: DateTime(2024, 2, 1),
        isPaid: false,
      ),
    ];
    when(() => repository.getAllTuitionFees()).thenAnswer((_) async => fees);
    final result = await useCase();
    expect(result, fees);
  });
}