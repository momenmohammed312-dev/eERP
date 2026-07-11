import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../../domain/finance/entities/receipt_entity.dart';
import '../../../domain/finance/entities/tuition_fee_entity.dart';
import '../../../shared/helpers/pdf_helpers.dart';

Future<Uint8List> buildFinancialReportPdf({
  required String centerName,
  required List<ReceiptEntity> receipts,
  required List<TuitionFeeEntity> fees,
}) async {
  final doc = pw.Document();
  final totalR = receipts.fold<double>(0, (s, r) => s + r.amount);
  final totalF = fees.fold<double>(0, (s, f) => s + f.amount);
  final paidF = fees.where((f) => f.isPaid).fold<double>(0, (s, f) => s + f.amount);

  doc.addPage(pw.MultiPage(
    pageFormat: PdfPageFormat.a4,
    build: (_) => [
      pdfTitle(centerName, 'التقرير المالي'),
      sectionHeading('الإيصالات'),
      dataTable(
        ['#', 'الطالب', 'المبلغ', 'التاريخ', 'الدفع'],
        receipts.map((r) => [
          '${r.id}', '${r.studentId}',
          '${r.amount.toStringAsFixed(2)} د.ل',
          r.receiptDate.toString().substring(0, 10),
          r.paymentMethod ?? '-',
        ]).toList(),
      ),
      pw.SizedBox(height: 16),
      sectionHeading('رسوم الدراسة'),
      dataTable(
        ['#', 'الطالب', 'المبلغ', 'الاستحقاق', 'الحالة'],
        fees.map((f) => [
          '${f.id}', '${f.studentId}',
          '${f.amount.toStringAsFixed(2)} د.ل',
          f.dueDate.toString().substring(0, 10),
          f.isPaid ? 'مدفوع' : 'غير مدفوع',
        ]).toList(),
      ),
      pw.SizedBox(height: 20),
      summaryRow('إجمالي الإيصالات', '${totalR.toStringAsFixed(2)} د.ل'),
      summaryRow('إجمالي الرسوم', '${totalF.toStringAsFixed(2)} د.ل'),
      summaryRow('المدفوعة', '${paidF.toStringAsFixed(2)} د.ل'),
      summaryRow('غير المدفوعة', '${(totalF - paidF).toStringAsFixed(2)} د.ل'),
    ],
  ));
  return doc.save();
}
