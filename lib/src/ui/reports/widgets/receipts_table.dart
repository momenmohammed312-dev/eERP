import 'package:edu_erp/src/domain/finance/entities/receipt_entity.dart';
import '../../../imports/imports.dart';

class ReceiptsTable extends StatelessWidget {
  const ReceiptsTable({super.key, required this.receipts});
  final List<ReceiptEntity> receipts;

  @override
  Widget build(BuildContext context) {
    return AppDataTable(
      columns: const ['الطالب', 'المبلغ', 'التاريخ', 'طريقة الدفع'],
      rows: receipts.map((r) => [
        Text('#${r.studentId}'),
        Text('${r.amount.toStringAsFixed(2)} ر.س'),
        Text(r.receiptDate.toString().substring(0, 10)),
        Text(r.paymentMethod ?? '-'),
      ]).toList(),
    );
  }
}