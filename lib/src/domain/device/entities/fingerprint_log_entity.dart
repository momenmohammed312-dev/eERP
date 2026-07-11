class FingerprintLogEntity {
  const FingerprintLogEntity({
    required this.id,
    required this.personId,
    required this.punchTime,
    required this.direction,
  });

  final int id;
  final int personId;
  final DateTime punchTime;
  final String direction; // 'in' | 'out'
}
