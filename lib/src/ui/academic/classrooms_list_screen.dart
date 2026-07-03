import '../../imports/imports.dart';
import '../shared/feature_scaffold_screen.dart';

class ClassroomsListScreen extends StatelessWidget {
  const ClassroomsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffoldScreen(
      title: 'إدارة الفصول الدراسية',
      subtitle: 'عرض الفصول والأقسام وربطها بالمراحل الدراسية.',
    );
  }
}
