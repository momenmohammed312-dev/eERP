import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/canteen/entities/canteen_sale_entity.dart';
import 'package:edu_erp/src/domain/canteen/repositories/canteen_repository.dart';
import 'package:edu_erp/src/application/canteen/use_cases/get_all_canteen_sales_use_case.dart';

class MockCanteenRepository extends Mock implements CanteenRepository {}

void main() {
  late MockCanteenRepository repository;
  late GetAllCanteenSalesUseCase useCase;

  setUp(() {
    repository = MockCanteenRepository();
    useCase = GetAllCanteenSalesUseCase(repository);
  });

  test('calls repository.getAllSales()', () async {
    when(() => repository.getAllSales()).thenAnswer((_) async => []);
    await useCase();
    verify(() => repository.getAllSales()).called(1);
  });

  test('returns the list from the repository', () async {
    final sales = [
      CanteenSaleEntity(
        id: 1,
        studentId: 1,
        amount: 25.5,
        saleDate: DateTime(2024, 1, 1),
        recordedBy: 1,
      ),
    ];
    when(() => repository.getAllSales()).thenAnswer((_) async => sales);
    final result = await useCase();
    expect(result, sales);
  });
}