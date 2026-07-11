import '../app_database.dart';

class AcademicDao {
  final AppDatabase db;
  AcademicDao(this.db);

  // Subject
  Future<int> insertSubject(SubjectCompanion data) =>
      db.into(db.subject).insert(data);
  Future<SubjectData?> getSubjectById(int id) =>
      (db.select(db.subject)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<SubjectData>> getAllSubjects() => db.select(db.subject).get();
  Future<int> updateSubject(int id, SubjectCompanion data) =>
      (db.update(db.subject)..where((t) => t.id.equals(id))).write(data);
  Future<int> deleteSubject(int id) =>
      (db.delete(db.subject)..where((t) => t.id.equals(id))).go();

  // Classroom
  Future<int> insertClassroom(ClassroomCompanion data) =>
      db.into(db.classroom).insert(data);
  Future<ClassroomData?> getClassroomById(int id) =>
      (db.select(db.classroom)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<ClassroomData>> getAllClassrooms() => db.select(db.classroom).get();
  Future<int> updateClassroom(int id, ClassroomCompanion data) =>
      (db.update(db.classroom)..where((t) => t.id.equals(id))).write(data);
  Future<int> deleteClassroom(int id) =>
      (db.delete(db.classroom)..where((t) => t.id.equals(id))).go();

  // Schedule
  Future<int> insertSchedule(ClassScheduleCompanion data) =>
      db.into(db.classSchedule).insert(data);
  Future<ClassScheduleData?> getScheduleById(int id) =>
      (db.select(db.classSchedule)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<ClassScheduleData>> getAllSchedules() =>
      db.select(db.classSchedule).get();
  Future<int> updateSchedule(int id, ClassScheduleCompanion data) =>
      (db.update(db.classSchedule)..where((t) => t.id.equals(id))).write(data);
  Future<int> deleteSchedule(int id) =>
      (db.delete(db.classSchedule)..where((t) => t.id.equals(id))).go();
  Future<List<ClassScheduleData>> getSchedulesByClassroom(int cid) =>
      (db.select(db.classSchedule)..where((t) => t.classroomId.equals(cid))).get();
  Future<List<ClassScheduleData>> getSchedulesByTeacher(int tid) =>
      (db.select(db.classSchedule)..where((t) => t.teacherId.equals(tid))).get();

  // Exam
  Future<int> insertExam(ExamCompanion data) =>
      db.into(db.exam).insert(data);
  Future<ExamData?> getExamById(int id) =>
      (db.select(db.exam)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<ExamData>> getAllExams() => db.select(db.exam).get();
  Future<int> updateExam(int id, ExamCompanion data) =>
      (db.update(db.exam)..where((t) => t.id.equals(id))).write(data);
  Future<int> deleteExam(int id) =>
      (db.delete(db.exam)..where((t) => t.id.equals(id))).go();

  // Grade
  Future<int> insertGrade(GradeCompanion data) =>
      db.into(db.grade).insert(data);
  Future<GradeData?> getGradeById(int id) =>
      (db.select(db.grade)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<List<GradeData>> getAllGrades() => db.select(db.grade).get();
  Future<int> updateGrade(int id, GradeCompanion data) =>
      (db.update(db.grade)..where((t) => t.id.equals(id))).write(data);
  Future<int> deleteGrade(int id) =>
      (db.delete(db.grade)..where((t) => t.id.equals(id))).go();
  Future<List<GradeData>> getGradesByStudent(int sid) =>
      (db.select(db.grade)..where((t) => t.studentId.equals(sid))).get();
  Future<List<GradeData>> getGradesByExam(int eid) =>
      (db.select(db.grade)..where((t) => t.examId.equals(eid))).get();

  // SectionAssignment
  Future<int> insertSectionAssignment(SectionAssignmentCompanion data) =>
      db.into(db.sectionAssignment).insert(data);
  Future<List<SectionAssignmentData>> getAllSectionAssignments() =>
      db.select(db.sectionAssignment).get();
  Future<SectionAssignmentData?> getSectionAssignmentById(int id) =>
      (db.select(db.sectionAssignment)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<int> deleteSectionAssignment(int id) =>
      (db.delete(db.sectionAssignment)..where((t) => t.id.equals(id))).go();
}