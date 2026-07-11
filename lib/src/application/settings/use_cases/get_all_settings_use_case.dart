import 'package:edu_erp/src/domain/settings/entities/setting_entity.dart';
import 'package:edu_erp/src/domain/settings/repositories/settings_repository.dart';

class GetAllSettingsUseCase {
  final SettingsRepository _repository;
  GetAllSettingsUseCase(this._repository);

  Future<List<SettingEntity>> call() => _repository.getAll();
}
