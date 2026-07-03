import '../../../imports/imports.dart';
import '../../shared/feature_scaffold_screen.dart';

class TeacherProfileScreen extends StatelessWidget {
  const TeacherProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffoldScreen(
      title: 'ملف المعلم',
      subtitle: 'تفاصيل المعلم والمواد والفصول المرتبطة به.',
    );
  }
}
