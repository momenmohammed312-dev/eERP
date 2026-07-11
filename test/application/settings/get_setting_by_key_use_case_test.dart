import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:edu_erp/src/domain/settings/entities/setting_entity.dart';
import 'package:edu_erp/src/domain/settings/repositories/settings_repository.dart';
import 'package:edu_erp/src/application/settings/use_cases/get_setting_by_key_use_case.dart';

class MockSettingsRepository extends Mock implements SettingsRepository {}

void main() {
  late MockSettingsRepository repository;
  late GetSettingByKeyUseCase useCase;

  setUp(() {
    repository = MockSettingsRepository();
    useCase = GetSettingByKeyUseCase(repository);
  });

  test('calls repository.getByKey with correct key', () async {
    when(() => repository.getByKey('school_name'))
        .thenAnswer((_) async => null);
    await useCase('school_name');
    verify(() => repository.getByKey('school_name')).called(1);
  });

  test('returns the setting when found', () async {
    const setting = SettingEntity(id: 1, key: 'school_name', value: 'Test');
    when(() => repository.getByKey('school_name'))
        .thenAnswer((_) async => setting);
    final result = await useCase('school_name');
    expect(result, setting);
  });

  test('returns null when setting not found', () async {
    when(() => repository.getByKey('nonexistent'))
        .thenAnswer((_) async => null);
    final result = await useCase('nonexistent');
    expect(result, isNull);
  });
}