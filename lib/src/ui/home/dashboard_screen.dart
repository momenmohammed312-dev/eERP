import '../../imports/imports.dart';
import 'dashboard_providers.dart';
import 'dashboard_stats.dart';
import 'dashboard_recent_students.dart';
import 'dashboard_quick_actions.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataAsync = ref.watch(dashboardDataProvider);
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: dataAsync.when(
        loading: () => const Center(
          child: Padding(padding: EdgeInsets.all(48), child: CircularProgressIndicator()),
        ),
        error: (e, _) => Center(
          child: Padding(padding: const EdgeInsets.all(48), child: Text('خطأ في تحميل البيانات: $e')),
        ),
        data: (data) {
          final stats = computeDashboardStats(
            students: data.students,
            teachers: data.teachers,
            receipts: data.receipts,
            attendance: data.attendance,
          );
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: AppSpacing.gutter,
                  mainAxisSpacing: AppSpacing.gutter,
                  childAspectRatio: 2.2,
                ),
                itemCount: stats.length,
                itemBuilder: (_, i) {
                  final s = stats[i];
                  return AppStatCard(title: s.title, value: s.value, subTitle: s.subTitle, icon: s.icon, color: s.color);
                },
              ),
              SizedBox(height: AppSpacing.lg),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 2, child: DashboardRecentStudents(students: data.students, personNames: data.personNames)),
                  SizedBox(width: AppSpacing.gutter),
                  const Expanded(child: DashboardQuickActions()),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
