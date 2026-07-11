import 'package:edu_erp/src/imports/imports.dart';
import 'package:edu_erp/src/infrastructure/providers/student_providers.dart';

class StudentProfileScreen extends ConsumerWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    final getStudent = ref.watch(getStudentByIdUseCase);
    final id = int.tryParse(context.currentRoute.split('/').last) ?? 0;

    return FutureBuilder(
      future: getStudent(id),
      builder: (context, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final student = snap.data;
        if (student == null) {
          return const AppEmptyState(title: 'الطالب غير موجود');
        }
        return SingleChildScrollView(
          padding: EdgeInsets.all(AppSpacing.margin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context, student),
              SizedBox(height: AppSpacing.lg),
              _buildInfoCards(theme, student),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context, _) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(AppSpacing.md),
        child: Row(
          children: [
            CircleAvatar(
              radius: 36.r,
              backgroundColor: context.theme.colorScheme.primary.withValues(alpha: 0.1),
              child: Text(
                'ط',
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold,
                    color: context.theme.colorScheme.primary),
              ),
            ),
            SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('طالب', style: context.theme.textTheme.headlineMedium
                      ?.copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: AppSpacing.xs),
                  Text('بيانات الطالب',
                      style: context.theme.textTheme.bodyMedium?.copyWith(
                          color: context.theme.colorScheme.onSurfaceVariant)),
                ],
              ),
            ),
            ElevatedButton.icon(
              onPressed: () => context.go(AppRoutes.studentForm),
              icon: const Icon(Icons.edit, size: 16),
              label: const Text('تعديل البيانات'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCards(ThemeData theme, _) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('البيانات الشخصية',
                      style: theme.textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const Divider(),
                  SizedBox(height: AppSpacing.sm),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: AppSpacing.gutter),
        Expanded(
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('الحالة الدراسية',
                      style: theme.textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const Divider(),
                  SizedBox(height: AppSpacing.sm),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}