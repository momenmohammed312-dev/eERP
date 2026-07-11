import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/canteen/entities/canteen_sale_entity.dart';
import 'package:edu_erp/src/domain/canteen/repositories/canteen_repository.dart';
import 'package:edu_erp/src/application/canteen/use_cases/create_canteen_sale_use_case.dart';

class MockCanteenRepository extends Mock implements CanteenRepository {}

void main() {
  late MockCanteenRepository repository;
  late CreateCanteenSaleUseCase useCase;

  setUp(() {
    repository = MockCanteenRepository();
    useCase = CreateCanteenSaleUseCase(repository);
  });

  test('calls repository.createSale with correct entity', () async {
    final sale = CanteenSaleEntity(
      id: 0,
      studentId: 1,
      amount: 25.5,
      saleDate: DateTime(2024, 1, 1),
      recordedBy: 1,
    );
    when(() => repository.createSale(sale)).thenAnswer((_) async => 1);
    await useCase(sale);
    verify(() => repository.createSale(sale)).called(1);
  });

  test('returns the created sale id', () async {
    final sale = CanteenSaleEntity(
      id: 0,
      studentId: 1,
      amount: 25.5,
      saleDate: DateTime(2024, 1, 1),
      recordedBy: 1,
    );
    when(() => repository.createSale(sale)).thenAnswer((_) async => 42);
    final result = await useCase(sale);
    expect(result, 42);
  });
}