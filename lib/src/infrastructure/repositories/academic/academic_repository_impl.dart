import 'package:drift/drift.dart';
import 'package:edu_erp/src/domain/academic/entities/subject_entity.dart';
import 'package:edu_erp/src/domain/academic/entities/classroom_entity.dart';
import 'package:edu_erp/src/domain/academic/entities/schedule_entity.dart';
import 'package:edu_erp/src/domain/academic/entities/exam_entity.dart';
import 'package:edu_erp/src/domain/academic/entities/grade_entity.dart';
import 'package:edu_erp/src/domain/academic/entities/section_assignment_entity.dart';
import 'package:edu_erp/src/domain/academic/repositories/academic_repository.dart';
import 'package:edu_erp/src/infrastructure/database/app_database.dart' as db;
import 'package:edu_erp/src/infrastructure/database/daos/academic_dao.dart';

class AcademicRepositoryImpl implements AcademicRepository {
  final AcademicDao _dao;
  AcademicRepositoryImpl(this._dao);

  SubjectEntity _s(db.SubjectData d) => SubjectEntity(
      id: d.id, name: d.name, code: d.code, description: d.description, isActive: d.isActive);
  ClassroomEntity _c(db.ClassroomData d) => ClassroomEntity(
      id: d.id, name: d.name, code: d.code, gradeLevel: d.gradeLevel, capacity: d.capacity, isActive: d.isActive);
  ScheduleEntity _sch(db.ClassScheduleData d) => ScheduleEntity(
      id: d.id, classroomId: d.classroomId, subjectId: d.subjectId, teacherId: d.teacherId,
      dayOfWeek: d.dayOfWeek, startTime: d.startTime, endTime: d.endTime, academicYear: d.academicYear);
  ExamEntity _e(db.ExamData d) => ExamEntity(
      id: d.id, subjectId: d.subjectId, classroomId: d.classroomId, examDate: d.examDate,
      examType: d.examType, maxScore: d.maxScore, description: d.description);
  GradeEntity _g(db.GradeData d) => GradeEntity(
      id: d.id, studentId: d.studentId, examId: d.examId, subjectId: d.subjectId,
      score: d.score, gradeLetter: d.gradeLetter, notes: d.notes);
  SectionAssignmentEntity _sa(db.SectionAssignmentData d) => SectionAssignmentEntity(
      id: d.id, studentId: d.studentId, classroomId: d.classroomId, academicYear: d.academicYear);

  @override Future<SubjectEntity?> getSubjectById(int id) async { final d = await _dao.getSubjectById(id); return d != null ? _s(d) : null; }
  @override Future<List<SubjectEntity>> getAllSubjects() async => (await _dao.getAllSubjects()).map(_s).toList();
  @override Future<int> createSubject(SubjectEntity e) => _dao.insertSubject(db.SubjectCompanion.insert(name: e.name, code: Value(e.code), description: Value(e.description)));
  @override Future<void> updateSubject(SubjectEntity e) => _dao.updateSubject(e.id, db.SubjectCompanion(name: Value(e.name), code: Value(e.code), description: Value(e.description)));
  @override Future<void> deleteSubject(int id) => _dao.deleteSubject(id);

  @override Future<ClassroomEntity?> getClassroomById(int id) async { final d = await _dao.getClassroomById(id); return d != null ? _c(d) : null; }
  @override Future<List<ClassroomEntity>> getAllClassrooms() async => (await _dao.getAllClassrooms()).map(_c).toList();
  @override Future<int> createClassroom(ClassroomEntity e) => _dao.insertClassroom(db.ClassroomCompanion.insert(name: e.name, code: Value(e.code), gradeLevel: Value(e.gradeLevel), capacity: Value(e.capacity)));
  @override Future<void> updateClassroom(ClassroomEntity e) => _dao.updateClassroom(e.id, db.ClassroomCompanion(name: Value(e.name), code: Value(e.code), gradeLevel: Value(e.gradeLevel), capacity: Value(e.capacity)));
  @override Future<void> deleteClassroom(int id) => _dao.deleteClassroom(id);

  @override Future<ScheduleEntity?> getScheduleById(int id) async { final d = await _dao.getScheduleById(id); return d != null ? _sch(d) : null; }
  @override Future<List<ScheduleEntity>> getAllSchedules() async => (await _dao.getAllSchedules()).map(_sch).toList();
  @override Future<int> createSchedule(ScheduleEntity e) => _dao.insertSchedule(db.ClassScheduleCompanion.insert(classroomId: e.classroomId, subjectId: e.subjectId, teacherId: e.teacherId, dayOfWeek: e.dayOfWeek, startTime: e.startTime, endTime: e.endTime, academicYear: Value(e.academicYear)));
  @override Future<void> updateSchedule(ScheduleEntity e) => _dao.updateSchedule(e.id, db.ClassScheduleCompanion(classroomId: Value(e.classroomId), subjectId: Value(e.subjectId), teacherId: Value(e.teacherId), dayOfWeek: Value(e.dayOfWeek), startTime: Value(e.startTime), endTime: Value(e.endTime), academicYear: Value(e.academicYear)));
  @override Future<void> deleteSchedule(int id) => _dao.deleteSchedule(id);

  @override Future<ExamEntity?> getExamById(int id) async { final d = await _dao.getExamById(id); return d != null ? _e(d) : null; }
  @override Future<List<ExamEntity>> getAllExams() async => (await _dao.getAllExams()).map(_e).toList();
  @override Future<int> createExam(ExamEntity e) => _dao.insertExam(db.ExamCompanion.insert(subjectId: e.subjectId, classroomId: e.classroomId, examDate: e.examDate, examType: Value(e.examType), maxScore: Value(e.maxScore), description: Value(e.description)));
  @override Future<void> updateExam(ExamEntity e) => _dao.updateExam(e.id, db.ExamCompanion(subjectId: Value(e.subjectId), classroomId: Value(e.classroomId), examDate: Value(e.examDate), examType: Value(e.examType), maxScore: Value(e.maxScore), description: Value(e.description)));
  @override Future<void> deleteExam(int id) => _dao.deleteExam(id);

  @override Future<GradeEntity?> getGradeById(int id) async { final d = await _dao.getGradeById(id); return d != null ? _g(d) : null; }
  @override Future<List<GradeEntity>> getAllGrades() async => (await _dao.getAllGrades()).map(_g).toList();
  @override Future<int> createGrade(GradeEntity e) => _dao.insertGrade(db.GradeCompanion.insert(studentId: e.studentId, examId: e.examId, subjectId: e.subjectId, score: e.score, gradeLetter: Value(e.gradeLetter), notes: Value(e.notes)));
  @override Future<void> updateGrade(GradeEntity e) => _dao.updateGrade(e.id, db.GradeCompanion(studentId: Value(e.studentId), examId: Value(e.examId), subjectId: Value(e.subjectId), score: Value(e.score), gradeLetter: Value(e.gradeLetter), notes: Value(e.notes)));
  @override Future<void> deleteGrade(int id) => _dao.deleteGrade(id);

  @override Future<SectionAssignmentEntity?> getSectionAssignmentById(int id) async { final d = await _dao.getSectionAssignmentById(id); return d != null ? _sa(d) : null; }
  @override Future<List<SectionAssignmentEntity>> getAllSectionAssignments() async => (await _dao.getAllSectionAssignments()).map(_sa).toList();
  @override Future<int> createSectionAssignment(SectionAssignmentEntity e) => _dao.insertSectionAssignment(db.SectionAssignmentCompanion.insert(studentId: e.studentId, classroomId: e.classroomId, academicYear: Value(e.academicYear)));
  @override Future<void> deleteSectionAssignment(int id) => _dao.deleteSectionAssignment(id);

  @override Future<List<GradeEntity>> getGradesByStudentId(int sid) async => (await _dao.getGradesByStudent(sid)).map(_g).toList();
  @override Future<List<GradeEntity>> getGradesByExamId(int eid) async => (await _dao.getGradesByExam(eid)).map(_g).toList();
  @override Future<List<ScheduleEntity>> getSchedulesByClassroomId(int cid) async => (await _dao.getSchedulesByClassroom(cid)).map(_sch).toList();
  @override Future<List<ScheduleEntity>> getSchedulesByTeacherId(int tid) async => (await _dao.getSchedulesByTeacher(tid)).map(_sch).toList();
}