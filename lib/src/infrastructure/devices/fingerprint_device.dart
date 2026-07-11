import '../../domain/device/entities/fingerprint_log_entity.dart';
import '../../domain/device/repositories/fingerprint_device_repository.dart';

/// Stub adapter — no physical device wired up yet. Swap this class for a
/// real USB/LAN SDK implementation once the device model is finalized
/// (see Educational_ERP_Technical_Report.docx §1). Domain/Application code
/// must never change when this class is replaced.
class FingerprintDevice implements FingerprintDeviceRepository {
  @override
  Future<bool> connect() async => true;

  @override
  Future<void> disconnect() async {}

  @override
  Stream<FingerprintLogEntity> onPunch() => const Stream.empty();

  @override
  Future<List<FingerprintLogEntity>> getLogs() async => [];
}
