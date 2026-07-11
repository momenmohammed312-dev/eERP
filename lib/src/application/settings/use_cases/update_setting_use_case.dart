import 'package:edu_erp/src/domain/settings/repositories/settings_repository.dart';

class UpdateSettingUseCase {
  final SettingsRepository _repository;
  UpdateSettingUseCase(this._repository);

  Future<void> call(String key, String value) => _repository.set(key, value);
}
