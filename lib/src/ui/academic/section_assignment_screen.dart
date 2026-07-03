import '../../imports/imports.dart';
import '../shared/feature_scaffold_screen.dart';

class SectionAssignmentScreen extends StatelessWidget {
  const SectionAssignmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffoldScreen(
      title: 'توزيع الطلاب على الفصول',
      subtitle: 'تعيين الطلاب للأقسام والفصول الدراسية.',
    );
  }
}
