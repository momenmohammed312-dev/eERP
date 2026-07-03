import '../../../imports/imports.dart';

class TeacherListActions extends StatelessWidget {
  const TeacherListActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: () => context.go('/teachers/1'),
          child: const Text('عرض'),
        ),
        TextButton(
          onPressed: () => context.go(AppRoutes.teacherForm),
          child: const Text('تعديل'),
        ),
      ],
    );
  }
}
