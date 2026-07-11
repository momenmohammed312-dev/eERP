import '../../imports/imports.dart';

class DashboardQuickActions extends StatelessWidget {
  const DashboardQuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('إجراءات سريعة', style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
        SizedBox(height: AppSpacing.md),
        Container(
          padding: EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            border: Border.all(color: theme.colorScheme.outlineVariant),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Column(children: [
            _ActionButton('تسجيل طالب جديد', Icons.person_add_alt_1_outlined, () => context.go(AppRoutes.studentForm)),
            const Divider(),
            _ActionButton('إنشاء سند قبض مالي', Icons.receipt_long_outlined, () => context.go(AppRoutes.newReceipt)),
            const Divider(),
            _ActionButton('رصد درجات اختبار', Icons.assignment_outlined, () => context.go(AppRoutes.gradeEntry)),
          ]),
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton(this.title, this.icon, this.onTap);
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6.r),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
        child: Row(children: [
          Icon(icon, color: theme.colorScheme.primary, size: 20.r),
          SizedBox(width: AppSpacing.md),
          Text(title, style: theme.textTheme.titleMedium?.copyWith(color: theme.colorScheme.onSurface)),
          const Spacer(),
          Icon(Icons.arrow_forward_ios, color: theme.colorScheme.onSurfaceVariant, size: 16.r),
        ]),
      ),
    );
  }
}
