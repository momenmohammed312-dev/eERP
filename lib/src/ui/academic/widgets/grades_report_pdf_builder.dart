import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../../domain/academic/entities/grade_entity.dart';
import '../../../shared/helpers/pdf_helpers.dart';

Future<Uint8List> buildGradesReportPdf({
  required String centerName,
  required List<GradeEntity> grades,
}) async {
  final doc = pw.Document();
  final avgScore = grades.isNotEmpty
      ? grades.fold<double>(0, (s, g) => s + g.score) / grades.length
      : 0.0;

  doc.addPage(pw.MultiPage(
    pageFormat: PdfPageFormat.a4,
    build: (_) => [
      pdfTitle(centerName, 'كشف الدرجات'),
      dataTable(
        ['#', 'الطالب', 'المادة', 'الامتحان', 'الدرجة', 'التقدير'],
        grades.map((g) => [
          '${g.id}', '${g.studentId}', '${g.subjectId}',
          '${g.examId}', g.score.toStringAsFixed(1),
          g.gradeLetter ?? '-',
        ]).toList(),
      ),
      pw.SizedBox(height: 16),
      summaryRow('عدد السجلات', '${grades.length}'),
      summaryRow('متوسط الدرجات', avgScore.toStringAsFixed(2)),
    ],
  ));
  return doc.save();
}
