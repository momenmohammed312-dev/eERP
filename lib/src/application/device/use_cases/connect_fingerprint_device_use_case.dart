import 'package:edu_erp/src/domain/device/repositories/fingerprint_device_repository.dart';

class ConnectFingerprintDeviceUseCase {
  final FingerprintDeviceRepository _repo;
  ConnectFingerprintDeviceUseCase(this._repo);
  Future<bool> call() => _repo.connect();
}
