class GradeEntity {
  final int id;
  final int studentId;
  final int examId;
  final int subjectId;
  final double score;
  final String? gradeLetter;
  final String? notes;

  const GradeEntity({
    required this.id,
    required this.studentId,
    required this.examId,
    required this.subjectId,
    required this.score,
    this.gradeLetter,
    this.notes,
  });
}