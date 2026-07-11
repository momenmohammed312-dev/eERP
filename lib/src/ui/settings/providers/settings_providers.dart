import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:edu_erp/src/ui/person/providers/database_provider.dart';
import 'package:edu_erp/src/infrastructure/database/daos/settings_dao.dart';
import 'package:edu_erp/src/infrastructure/repositories/settings/settings_repository_impl.dart';
import 'package:edu_erp/src/domain/settings/repositories/settings_repository.dart';
import 'package:edu_erp/src/application/settings/use_cases/get_all_settings_use_case.dart';
import 'package:edu_erp/src/application/settings/use_cases/get_setting_by_key_use_case.dart';
import 'package:edu_erp/src/application/settings/use_cases/update_setting_use_case.dart';

final _settingsRepoProvider = Provider<SettingsRepository>((ref) {
  final db = ref.read(appDatabaseProvider);
  return SettingsRepositoryImpl(SettingsDao(db));
});

final getAllSettingsUseCase = Provider<GetAllSettingsUseCase>((ref) {
  return GetAllSettingsUseCase(ref.read(_settingsRepoProvider));
});
final getSettingByKeyUseCase = Provider<GetSettingByKeyUseCase>((ref) {
  return GetSettingByKeyUseCase(ref.read(_settingsRepoProvider));
});
final updateSettingUseCase = Provider<UpdateSettingUseCase>((ref) {
  return UpdateSettingUseCase(ref.read(_settingsRepoProvider));
});
