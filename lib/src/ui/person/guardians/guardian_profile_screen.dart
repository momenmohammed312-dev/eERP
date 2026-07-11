import 'package:edu_erp/src/imports/imports.dart';
import 'package:edu_erp/src/infrastructure/providers/guardian_providers.dart';

class GuardianProfileScreen extends ConsumerWidget {
  const GuardianProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getGuardian = ref.watch(getGuardianByIdUseCase);
    final id = int.tryParse(context.currentRoute.split('/').last) ?? 0;

    return FutureBuilder(
      future: getGuardian(id),
      builder: (context, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snap.data == null) {
          return const AppEmptyState(title: 'ولي الأمر غير موجود');
        }
        return SingleChildScrollView(
          padding: EdgeInsets.all(AppSpacing.margin),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ملف ولي الأمر',
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