class SubjectEntity {
  final int id;
  final String name;
  final String? code;
  final String? description;
  final bool isActive;

  const SubjectEntity({
    required this.id,
    required this.name,
    this.code,
    this.description,
    required this.isActive,
  });
}