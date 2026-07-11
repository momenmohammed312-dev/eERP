import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/settings/repositories/settings_repository.dart';
import 'package:edu_erp/src/application/settings/use_cases/update_setting_use_case.dart';

class MockSettingsRepository extends Mock implements SettingsRepository {}

void main() {
  late MockSettingsRepository repository;
  late UpdateSettingUseCase useCase;

  setUp(() {
    repository = MockSettingsRepository();
    useCase = UpdateSettingUseCase(repository);
  });

  test('calls repository.set with correct key and value', () async {
    when(() => repository.set('school_name', 'New School'))
        .thenAnswer((_) async {});
    await useCase('school_name', 'New School');
    verify(() => repository.set('school_name', 'New School')).called(1);
  });

  test('propagates repository exceptions', () async {
    when(() => repository.set('key', 'value'))
        .thenThrow(Exception('Database error'));
    expect(() => useCase('key', 'value'), throwsException);
  });
}