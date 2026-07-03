import '../../imports/imports.dart';
import '../shared/feature_scaffold_screen.dart';

class ExamManagementScreen extends StatelessWidget {
  const ExamManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffoldScreen(
      title: 'إدارة الاختبارات',
      subtitle: 'إنشاء الاختبارات وربطها بالمواد والفصول.',
    );
  }
}
