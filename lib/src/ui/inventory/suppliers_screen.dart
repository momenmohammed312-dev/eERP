import 'package:edu_erp/src/domain/inventory/entities/supplier_entity.dart';
import 'package:edu_erp/src/application/inventory/use_cases/get_all_suppliers_use_case.dart';
import '../../imports/imports.dart';
import 'package:edu_erp/src/infrastructure/providers/inventory_providers.dart';

class SuppliersScreen extends ConsumerWidget {
  const SuppliersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.watch(getAllSuppliersUseCase);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('الموردين', style: context.theme.textTheme.headlineMedium),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add, size: 18),
                label: const Text('إضافة مورد'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          _SuppliersTable(getAll: getAll),
        ],
      ),
    );
  }
}

class _SuppliersTable extends StatelessWidget {
  const _SuppliersTable({required this.getAll});
  final GetAllSuppliersUseCase getAll;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SupplierEntity>>(
      future: getAll(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final suppliers = snap.data ?? <SupplierEntity>[];
        if (suppliers.isEmpty) {
          return const AppEmptyState(title: 'لا توجد موردين');
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDataTable(
              columns: const ['الاسم', 'جهة الاتصال', 'الهاتف', 'البريد الإلكتروني'],
              rows: suppliers.map((s) => [
                Text(s.name, style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(s.contactPerson ?? '-'),
                Text(s.phone ?? '-'),
                Text(s.email ?? '-'),
              ]).toList(),
            ),
            SizedBox(height: AppSpacing.sm),
            Text('عرض ${suppliers.length} مورد',
              style: context.theme.textTheme.bodySmall?.copyWith(
                  color: context.theme.colorScheme.onSurfaceVariant)),
          ],
        );
      },
    );
  }
}