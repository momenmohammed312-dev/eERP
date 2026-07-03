import '../../imports/imports.dart';
import '../shared/feature_scaffold_screen.dart';

class GradeEntryScreen extends StatelessWidget {
  const GradeEntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeatureScaffoldScreen(
      title: 'رصد الدرجات والنتائج',
      subtitle: 'إدخال درجات الطلاب وعرض النتائج الأكاديمية.',
    );
  }
}
