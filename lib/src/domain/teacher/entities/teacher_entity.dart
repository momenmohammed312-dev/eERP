class TeacherEntity {
  final int id;
  final int personId;
  final String? specialization;
  final DateTime hireDate;
  final bool status;

  const TeacherEntity({
    required this.id,
    required this.personId,
    this.specialization,
    required this.hireDate,
    required this.status,
  });
}
