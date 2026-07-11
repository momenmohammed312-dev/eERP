import '../../imports/imports.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSpacing.margin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'مركز الإشعارات',
              style: context.theme.textTheme.headlineMedium,
            ),
            SizedBox(height: AppSpacing.lg),
            const AppEmptyState(
              icon: HugeIcons.strokeRoundedNotification02,
              title: 'لا توجد إشعارات',
              subtitle: 'لم يصدر أي إشعارات بعد.',
            ),
          ],
        ),
      ),
    );
  }
}