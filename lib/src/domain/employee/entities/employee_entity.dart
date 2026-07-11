class EmployeeEntity {
  final int id;
  final int personId;
  final String? jobTitle;
  final DateTime hireDate;
  final bool status;

  const EmployeeEntity({
    required this.id,
    required this.personId,
    this.jobTitle,
    required this.hireDate,
    required this.status,
  });
}
