class SectionAssignmentEntity {
  final int id;
  final int studentId;
  final int classroomId;
  final String? academicYear;

  const SectionAssignmentEntity({
    required this.id,
    required this.studentId,
    required this.classroomId,
    this.academicYear,
  });
}