import '../entities/fingerprint_log_entity.dart';

abstract class FingerprintDeviceRepository {
  Future<bool> connect();
  Future<void> disconnect();
  Stream<FingerprintLogEntity> onPunch();
  Future<List<FingerprintLogEntity>> getLogs();
}
