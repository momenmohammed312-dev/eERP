import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

pw.Widget pdfTitle(String centerName, String subtitle) {
  return pw.Column(children: [
    pw.Center(child: pw.Text(centerName,
        style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold))),
    pw.SizedBox(height: 8),
    pw.Center(child: pw.Text(subtitle,
        style: const pw.TextStyle(fontSize: 14, color: PdfColors.grey700))),
    pw.SizedBox(height: 20),
  ]);
}

pw.Widget sectionHeading(String text) => pw.Padding(
    padding: const pw.EdgeInsets.only(bottom: 8),
    child: pw.Text(text,
        style: pw.TextStyle(fontSize: 13, fontWeight: pw.FontWeight.bold)));

pw.Table dataTable(List<String> headers, List<List<String>> rows) {
  return pw.Table(
    border: pw.TableBorder.all(width: 0.5, color: PdfColors.grey400),
    children: [
      _headerRow(headers),
      for (final r in rows)
        pw.TableRow(children: r.map(_cell).toList()),
    ],
  );
}

pw.TableRow _headerRow(List<String> cells) => pw.TableRow(
      decoration: const pw.BoxDecoration(color: PdfColors.grey200),
      children: cells.map((c) => pw.Padding(
            padding: const pw.EdgeInsets.all(6),
            child: pw.Text(c,
                style: pw.TextStyle(
                    fontSize: 10, fontWeight: pw.FontWeight.bold)),
          )).toList(),
    );

pw.Widget _cell(String text) => pw.Padding(
      padding: const pw.EdgeInsets.all(6),
      child: pw.Text(text, style: const pw.TextStyle(fontSize: 9)),
    );

pw.Widget summaryRow(String label, String value) => pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      children: [
        pw.Text(label, style: const pw.TextStyle(fontSize: 11)),
        pw.Text(value,
            style: pw.TextStyle(
                fontSize: 11, fontWeight: pw.FontWeight.bold)),
      ],
    );
