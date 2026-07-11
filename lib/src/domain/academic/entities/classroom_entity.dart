class ClassroomEntity {
  final int id;
  final String name;
  final String? code;
  final String? gradeLevel;
  final int? capacity;
  final bool isActive;

  const ClassroomEntity({
    required this.id,
    required this.name,
    this.code,
    this.gradeLevel,
    this.capacity,
    required this.isActive,
  });
}