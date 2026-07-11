import 'package:edu_erp/src/domain/device/entities/fingerprint_log_entity.dart';
import 'package:edu_erp/src/domain/device/repositories/fingerprint_device_repository.dart';

class ListenForPunchesUseCase {
  final FingerprintDeviceRepository _repo;
  ListenForPunchesUseCase(this._repo);
  Stream<FingerprintLogEntity> call() => _repo.onPunch();
}
