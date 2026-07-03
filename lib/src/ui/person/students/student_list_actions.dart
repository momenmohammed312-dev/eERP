import '../../../imports/imports.dart';

class StudentListActions extends StatelessWidget {
  const StudentListActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: () => context.go('/students/1'),
          child: const Text('عرض'),
        ),
        TextButton(
          onPressed: () => context.go(AppRoutes.studentForm),
          child: const Text('تعديل'),
        ),
      ],
    );
  }
}
