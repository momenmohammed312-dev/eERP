import '../../imports/imports.dart';
import 'widgets/role_list_section.dart';
import 'widgets/user_list_section.dart';

class UserManagementScreen extends StatelessWidget {
  const UserManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.xl,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'إدارة المستخدمين والصلاحيات',
            style: context.theme.textTheme.headlineMedium?.copyWith(
              color: cs.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: AppSpacing.xs),
          Text(
            'إدارة الأدوار وصلاحيات الوصول للمستخدمين',
            style: context.theme.textTheme.bodyMedium?.copyWith(
              color: cs.onSurfaceVariant,
            ),
          ),
          SizedBox(height: AppSpacing.xl),
          const RoleListSection(),
          SizedBox(height: AppSpacing.lg),
          const UserListSection(),
        ],
      ),
    );
  }
}
