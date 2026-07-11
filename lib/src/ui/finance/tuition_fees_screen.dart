import '../../imports/imports.dart';
import 'providers/finance_providers.dart';
import 'tuition_fees_table.dart';

class TuitionFeesScreen extends ConsumerWidget {
  const TuitionFeesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAll = ref.watch(getAllTuitionFeesUseCase);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('رسوم الطلاب', style: context.theme.textTheme.headlineMedium),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add, size: 18),
                label: const Text('إضافة رسوم'),
              ),
            ],
          ),
          SizedBox(height: AppSpacing.lg),
          TuitionFeesTable(getAll: getAll),
        ],
      ),
    );
  }
}