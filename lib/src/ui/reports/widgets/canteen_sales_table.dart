import 'package:edu_erp/src/domain/canteen/entities/canteen_sale_entity.dart';
import '../../../imports/imports.dart';

class CanteenSalesTable extends StatelessWidget {
  const CanteenSalesTable({super.key, required this.sales});
  final List<CanteenSaleEntity> sales;

  @override
  Widget build(BuildContext context) {
    return AppDataTable(
      columns: const ['الطالب', 'المبلغ', 'التاريخ', 'المنتجات'],
      rows: sales.map((s) => [
        Text('#${s.studentId}'),
        Text('${s.amount.toStringAsFixed(2)} ر.س'),
        Text(s.saleDate.toString().substring(0, 10)),
        Text(s.items ?? '-'),
      ]).toList(),
    );
  }
}