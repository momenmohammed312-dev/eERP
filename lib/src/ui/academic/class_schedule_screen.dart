import '../../imports/imports.dart';
import '../shared/feature_scaffold_screen.dart';

class ClassScheduleScreen extends StatelessWidget {
  const ClassScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffoldScreen(
      title: 'الجدول الدراسي',
      subtitle: 'عرض وإدارة جدول الحصص الأسبوعي لكل فصل.',
    );
  }
}
