import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/finance/entities/payroll_entity.dart';
import 'package:edu_erp/src/domain/finance/repositories/finance_repository.dart';
import 'package:edu_erp/src/application/finance/use_cases/create_payroll_use_case.dart';

class MockFinanceRepository extends Mock implements FinanceRepository {}

void main() {
  late MockFinanceRepository repository;
  late CreatePayrollUseCase useCase;

  setUp(() {
    repository = MockFinanceRepository();
    useCase = CreatePayrollUseCase(repository);
  });

  test('calls repository.createPayroll with correct entity', () async {
    final payroll = PayrollEntity(
      id: 0,
      employeeId: 1,
      salary: 5000,
      payDate: DateTime(2024, 1, 1),
    );
    when(() => repository.createPayroll(payroll)).thenAnswer((_) async => 1);
    await useCase(payroll);
    verify(() => repository.createPayroll(payroll)).called(1);
  });

  test('returns the created payroll id', () async {
    final payroll = PayrollEntity(
      id: 0,
      employeeId: 1,
      salary: 5000,
      payDate: DateTime(2024, 1, 1),
    );
    when(() => repository.createPayroll(payroll)).thenAnswer((_) async => 42);
    final result = await useCase(payroll);
    expect(result, 42);
  });
}