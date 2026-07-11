import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/canteen/repositories/canteen_repository.dart';
import 'package:edu_erp/src/application/canteen/use_cases/delete_canteen_sale_use_case.dart';

class MockCanteenRepository extends Mock implements CanteenRepository {}

void main() {
  late MockCanteenRepository repository;
  late DeleteCanteenSaleUseCase useCase;

  setUp(() {
    repository = MockCanteenRepository();
    useCase = DeleteCanteenSaleUseCase(repository);
  });

  test('calls repository.deleteSale with correct id', () async {
    when(() => repository.deleteSale(1)).thenAnswer((_) async {});
    await useCase(1);
    verify(() => repository.deleteSale(1)).called(1);
  });

  test('propagates repository exceptions', () async {
    when(() => repository.deleteSale(1)).thenThrow(Exception('Not found'));
    expect(() => useCase(1), throwsException);
  });
}