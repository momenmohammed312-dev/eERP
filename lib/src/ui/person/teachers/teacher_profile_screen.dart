import 'package:edu_erp/src/imports/imports.dart';

class TeacherProfileScreen extends StatelessWidget {
  const TeacherProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          SizedBox(height: AppSpacing.lg),
          _buildInfoCards(theme),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(AppSpacing.md),
        child: Row(
          children: [
            CircleAvatar(
              radius: 36.r,
              backgroundColor: context.theme.colorScheme.primary.withValues(alpha: 0.1),
              child: Text(
                'أ',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: context.theme.colorScheme.primary,
                ),
              ),
            ),
            SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'أحمد محمود حسن',
                    style: context.theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: AppSpacing.xs),
                  Text(
                    'معلم رياضيات - قسم العلوم التطبيقية',
                    style: context.theme.textTheme.bodyMedium?.copyWith(
                      color: context.theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton.icon(
              onPressed: () => context.go(AppRoutes.teacherForm),
              icon: const Icon(Icons.edit, size: 16),
              label: const Text('تعديل البيانات'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCards(ThemeData theme) {
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
                  Text(
                    'المعلومات المهنية',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(),
                  SizedBox(height: AppSpacing.sm),
                  _buildDetailRow('التخصص الدراسي:', 'الرياضيات البحتة', theme),
                  _buildDetailRow('تاريخ التعيين:', '١٥-٠٩-٢٠٢٢', theme),
                  _buildDetailRow('رقم الهاتف:', '٠١٠٢٠٣٠٤٠٥', theme),
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
                  Text(
                    'الحالة المالية والأكاديمية',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(),
                  SizedBox(height: AppSpacing.sm),
                  _buildDetailRow('حالة العمل:', 'على رأس العمل', theme, isSuccess: true),
                  _buildDetailRow('الراتب الأساسي:', '٨,٥٠٠ ج.م', theme),
                  _buildDetailRow('الفصول المسندة:', '٣ فصول دراسية', theme),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value, ThemeData theme, {bool isSuccess = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: theme.colorScheme.onSurfaceVariant)),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: isSuccess ? Colors.green : theme.colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
