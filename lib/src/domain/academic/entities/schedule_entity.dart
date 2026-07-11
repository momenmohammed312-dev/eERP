class ScheduleEntity {
  final int id;
  final int classroomId;
  final int subjectId;
  final int teacherId;
  final int dayOfWeek;
  final String startTime;
  final String endTime;
  final String? academicYear;

  const ScheduleEntity({
    required this.id,
    required this.classroomId,
    required this.subjectId,
    required this.teacherId,
    required this.dayOfWeek,
    required this.startTime,
    required this.endTime,
    this.academicYear,
  });
}