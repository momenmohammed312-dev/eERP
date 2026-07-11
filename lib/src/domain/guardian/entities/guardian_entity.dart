class GuardianEntity {
  final int id;
  final int personId;
  final String? relationToStudent;
  final bool isPrimaryContact;

  const GuardianEntity({
    required this.id,
    required this.personId,
    this.relationToStudent,
    required this.isPrimaryContact,
  });
}
