import '../../../imports/imports.dart';
import '../../shared/feature_scaffold_screen.dart';

class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffoldScreen(
      title: 'ملف الطالب',
      subtitle: 'تفاصيل الطالب الأكاديمية والمالية والحضور مع ربط المعرّف من المسار.',
    );
  }
}
