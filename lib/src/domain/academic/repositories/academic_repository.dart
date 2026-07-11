import '../entities/subject_entity.dart';
import '../entities/classroom_entity.dart';
import '../entities/schedule_entity.dart';
import '../entities/exam_entity.dart';
import '../entities/grade_entity.dart';
import '../entities/section_assignment_entity.dart';

abstract class AcademicRepository {
  Future<SubjectEntity?> getSubjectById(int id);
  Future<List<SubjectEntity>> getAllSubjects();
  Future<int> createSubject(SubjectEntity entity);
  Future<void> updateSubject(SubjectEntity entity);
  Future<void> deleteSubject(int id);

  Future<ClassroomEntity?> getClassroomById(int id);
  Future<List<ClassroomEntity>> getAllClassrooms();
  Future<int> createClassroom(ClassroomEntity entity);
  Future<void> updateClassroom(ClassroomEntity entity);
  Future<void> deleteClassroom(int id);

  Future<ScheduleEntity?> getScheduleById(int id);
  Future<List<ScheduleEntity>> getAllSchedules();
  Future<int> createSchedule(ScheduleEntity entity);
  Future<void> updateSchedule(ScheduleEntity entity);
  Future<void> deleteSchedule(int id);

  Future<ExamEntity?> getExamById(int id);
  Future<List<ExamEntity>> getAllExams();
  Future<int> createExam(ExamEntity entity);
  Future<void> updateExam(ExamEntity entity);
  Future<void> deleteExam(int id);

  Future<GradeEntity?> getGradeById(int id);
  Future<List<GradeEntity>> getAllGrades();
  Future<int> createGrade(GradeEntity entity);
  Future<void> updateGrade(GradeEntity entity);
  Future<void> deleteGrade(int id);

  Future<SectionAssignmentEntity?> getSectionAssignmentById(int id);
  Future<List<SectionAssignmentEntity>> getAllSectionAssignments();
  Future<int> createSectionAssignment(SectionAssignmentEntity entity);
  Future<void> deleteSectionAssignment(int id);

  Future<List<GradeEntity>> getGradesByStudentId(int studentId);
  Future<List<GradeEntity>> getGradesByExamId(int examId);
  Future<List<ScheduleEntity>> getSchedulesByClassroomId(int classroomId);
  Future<List<ScheduleEntity>> getSchedulesByTeacherId(int teacherId);
}