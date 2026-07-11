import '../../imports/core_imports.dart';
import '../../imports/packages_imports.dart';
import '../auth/providers/local_auth_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final user = ref.watch(sessionProvider).user;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppTopBar(title: 'home.home_title'.tr()),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.xl.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppIcon(
                icon: Icons.home_outlined,
                size: 60.sp,
                color: colorScheme.primary,
              ),
              SizedBox(height: AppSpacing.lg.h),
              Text(
                user?.username ?? 'home.welcome_home'.tr(),
                textAlign: TextAlign.center,
                style: textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: colorScheme.onSurface,
                  fontSize: 28.sp,
                ),
              ),
              SizedBox(height: AppSpacing.md.h),
              Text(
                user != null ? user.username : 'home.home_subtitle'.tr(),
                textAlign: TextAlign.center,
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
