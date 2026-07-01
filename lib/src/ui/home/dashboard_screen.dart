import 'package:edu_erp/src/imports/imports.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = context.theme;

    // Dummy statistics matching standard ERP setup
    final stats = [
      _StatItem(
        title: 'إجمالي الطلاب المسجلين',
        value: '١,٢٤٠',
        subTitle: '+١٢ طالب هذا الأسبوع',
        icon: HugeIcons.strokeRoundedStudent,
        color: theme.colorScheme.primary,
      ),
      _StatItem(
        title: 'المعلمون النشطون',
        value: '٤٨',
        subTitle: 'في جميع الأقسام الدراسية',
        icon: HugeIcons.strokeRoundedTeacher,
        color: theme.colorScheme.secondary,
      ),
      _StatItem(
        title: 'المقبوضات المالية اليوم',
        value: '١٥,٤٠٠ ج.م',
        subTitle: 'إجمالي سندات القبض اليوم',
        icon: HugeIcons.strokeRoundedCoins,
        color: Colors.green,
      ),
      _StatItem(
        title: 'نسبة الحضور اليومي',
        value: '٩٤.٢٪',
        subTitle: 'حضور الطلاب والموظفين',
        icon: HugeIcons.strokeRoundedCalendar03,
        color: Colors.orange,
      ),
    ];

    // Dummy recent activities
    final recentStudents = [
      ['محمد أحمد علي', 'الصف الثالث الثانوي', '١٢:٣٠ م'],
      ['سارة محمود يوسف', 'الصف الأول الثانوي', '١١:١٥ ص'],
      ['خالد عبد الرحمن', 'الصف الثاني الثانوي', '١٠:٤٥ ص'],
      ['رنا طارق سعيد', 'الصف الثالث الثانوي', '٠٩:٢٠ ص'],
    ];

    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Stat Cards Grid
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
            itemBuilder: (context, index) {
              final stat = stats[index];
              return AppStatCard(
                title: stat.title,
                value: stat.value,
                subTitle: stat.subTitle,
                icon: stat.icon,
                color: stat.color,
              );
            },
          ),
          
          SizedBox(height: AppSpacing.lg),
          
          // Dashboard Details Layout (Two columns: Table and summary widget)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Recent Registrations Table
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'آخر الطلاب المسجلين حديثاً',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: AppSpacing.md),
                    AppDataTable(
                      columns: const ['اسم الطالب', 'الصف الدراسي', 'وقت التسجيل'],
                      rows: recentStudents.map((student) {
                        return [
                          Text(student[0], style: const TextStyle(fontWeight: FontWeight.w600)),
                          Text(student[1]),
                          Text(student[2]),
                        ];
                      }).toList(),
                    ),
                  ],
                ),
              ),
              
              SizedBox(width: AppSpacing.gutter),
              
              // Direct Actions card
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'إجراءات سريعة',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: AppSpacing.md),
                    Container(
                      padding: EdgeInsets.all(AppSpacing.md),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        border: Border.all(color: theme.colorScheme.outlineVariant),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        children: [
                          _QuickActionButton(
                            title: 'تسجيل طالب جديد',
                            icon: HugeIcons.strokeRoundedUserAdd01,
                            onTap: () => context.go('/students/form'),
                          ),
                          const Divider(),
                          _QuickActionButton(
                            title: 'إنشاء سند قبض مالي',
                            icon: HugeIcons.strokeRoundedAddFormat,
                            onTap: () => context.go('/finance/receipts/new'),
                          ),
                          const Divider(),
                          _QuickActionButton(
                            title: 'رصد درجات اختبار',
                            icon: HugeIcons.strokeRoundedNotebook02,
                            onTap: () => context.go('/academic/grades'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatItem {
  const _StatItem({
    required this.title,
    required this.value,
    this.subTitle,
    required this.icon,
    required this.color,
  });
  final String title;
  final String value;
  final String? subTitle;
  final IconData icon;
  final Color color;
}

class _QuickActionButton extends StatelessWidget {
  const _QuickActionButton({
    required this.title,
    required this.icon,
    required this.onTap,
  });

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
        child: Row(
          children: [
            HugeIcon(
              icon: icon,
              color: theme.colorScheme.primary,
              size: 20.r,
            ),
            SizedBox(width: AppSpacing.md),
            Text(
              title,
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            const Spacer(),
            HugeIcon(
              icon: HugeIcons.strokeRoundedArrowRight01,
              color: theme.colorScheme.onSurfaceVariant,
              size: 16.r,
            ),
          ],
        ),
      ),
    );
  }
}
