class StudentEntity {
  final int id;
  final int personId;
  final DateTime enrollmentDate;
  final bool status;
  final int guardianId;
  final String? photoPath;

  const StudentEntity({
    required this.id,
    required this.personId,
    required this.enrollmentDate,
    required this.status,
    required this.guardianId,
    this.photoPath,
  });
}
