import '../../../imports/imports.dart';

class TeacherFormScreen extends StatefulWidget {
  const TeacherFormScreen({super.key});

  @override
  State<TeacherFormScreen> createState() => _TeacherFormScreenState();
}

class _TeacherFormScreenState extends State<TeacherFormScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: AppCard(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Ø¨ÙŠØ§Ù†Ø§Øª Ø§Ù„Ù…Ø¹Ù„Ù…', style: context.theme.textTheme.titleLarge),
              SizedBox(height: AppSpacing.lg),
              TextFormField(
                decoration: InputDecoration(labelText: 'Ø§Ù„Ø§Ø³Ù… Ø§Ù„ÙƒØ§Ù…Ù„'),
              ),
              SizedBox(height: AppSpacing.md),
              TextFormField(
                decoration: InputDecoration(labelText: 'Ø§Ù„ØªØ®ØµØµ'),
              ),
              SizedBox(height: AppSpacing.md),
              TextFormField(
                decoration: InputDecoration(labelText: 'Ø±Ù‚Ù… Ø§Ù„Ù‡Ø§ØªÙ'),
              ),
              SizedBox(height: AppSpacing.xl),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () => context.go(AppRoutes.teachers),
                    child: const Text('Ø¥Ù„ØºØ§Ø¡'),
                  ),
                  SizedBox(width: AppSpacing.sm),
                  ElevatedButton(
                    onPressed: () => context.go(AppRoutes.teachers),
                    child: const Text('Ø­ÙØ¸'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
