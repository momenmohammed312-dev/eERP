import 'package:edu_erp/src/domain/settings/entities/setting_entity.dart';
import 'package:edu_erp/src/domain/settings/repositories/settings_repository.dart';

class GetSettingByKeyUseCase {
  final SettingsRepository _repository;
  GetSettingByKeyUseCase(this._repository);

  Future<SettingEntity?> call(String key) => _repository.getByKey(key);
}
