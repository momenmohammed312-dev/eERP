import 'package:edu_erp/src/imports/imports.dart';
import '../providers/employee_providers.dart';

class EmployeeProfileScreen extends ConsumerWidget {
  const EmployeeProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getEmployee = ref.watch(getEmployeeByIdUseCase);
    final id = int.tryParse(context.currentRoute.split('/').last) ?? 0;

    return FutureBuilder(
      future: getEmployee(id),
      builder: (context, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snap.data == null) {
          return const AppEmptyState(title: 'الموظف غير موجود');
        }
        return SingleChildScrollView(
          padding: EdgeInsets.all(AppSpacing.margin),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ملف الموظف',
                      style: context.theme.textTheme.titleLarge),
                  SizedBox(height: AppSpacing.md),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}