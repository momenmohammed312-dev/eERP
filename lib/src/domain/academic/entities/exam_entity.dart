class ExamEntity {
  final int id;
  final int subjectId;
  final int classroomId;
  final DateTime examDate;
  final String? examType;
  final double? maxScore;
  final String? description;

  const ExamEntity({
    required this.id,
    required this.subjectId,
    required this.classroomId,
    required this.examDate,
    this.examType,
    this.maxScore,
    this.description,
  });
}