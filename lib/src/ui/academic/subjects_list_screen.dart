import '../../imports/imports.dart';
import '../shared/feature_scaffold_screen.dart';

class SubjectsListScreen extends StatelessWidget {
  const SubjectsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffoldScreen(
      title: 'إدارة المواد',
      subtitle: 'قائمة المواد الدراسية مع إضافة وتعديل وحذف.',
    );
  }
}
