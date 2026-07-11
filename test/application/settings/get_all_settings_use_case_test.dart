import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/settings/entities/setting_entity.dart';
import 'package:edu_erp/src/domain/settings/repositories/settings_repository.dart';
import 'package:edu_erp/src/application/settings/use_cases/get_all_settings_use_case.dart';

class MockSettingsRepository extends Mock implements SettingsRepository {}

void main() {
  late MockSettingsRepository repository;
  late GetAllSettingsUseCase useCase;

  setUp(() {
    repository = MockSettingsRepository();
    useCase = GetAllSettingsUseCase(repository);
  });

  test('calls repository.getAll()', () async {
    when(() => repository.getAll()).thenAnswer((_) async => []);
    await useCase();
    verify(() => repository.getAll()).called(1);
  });

  test('returns the list from the repository', () async {
    final settings = [
      const SettingEntity(id: 1, key: 'school_name', value: 'Test School'),
      const SettingEntity(id: 2, key: 'language', value: 'ar'),
    ];
    when(() => repository.getAll()).thenAnswer((_) async => settings);
    final result = await useCase();
    expect(result, settings);
  });
}