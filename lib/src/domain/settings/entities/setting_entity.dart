class SettingEntity {
  const SettingEntity({
    required this.id,
    required this.key,
    required this.value,
    this.description,
  });

  final int id;
  final String key;
  final String value;
  final String? description;
}
