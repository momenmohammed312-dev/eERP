import '../../../imports/imports.dart';

class StudentFormScreen extends StatefulWidget {
  const StudentFormScreen({super.key});

  @override
  State<StudentFormScreen> createState() => _StudentFormScreenState();
}

class _StudentFormScreenState extends State<StudentFormScreen> {
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
              Text('Ø¨ÙŠØ§Ù†Ø§Øª Ø§Ù„Ø·Ø§Ù„Ø¨', style: context.theme.textTheme.titleLarge),
              SizedBox(height: AppSpacing.lg),
              TextFormField(
                decoration: InputDecoration(labelText: 'Ø§Ù„Ø§Ø³Ù… Ø§Ù„ÙƒØ§Ù…Ù„'),
              ),
              SizedBox(height: AppSpacing.md),
              TextFormField(
                decoration: InputDecoration(labelText: 'Ø§Ù„ØµÙ Ø§Ù„Ø¯Ø±Ø§Ø³ÙŠ'),
              ),
              SizedBox(height: AppSpacing.md),
              TextFormField(
                decoration: InputDecoration(labelText: 'Ø±Ù‚Ù… Ø§Ù„Ù‡Ø§ØªÙ'),
              ),
              SizedBox(height: AppSpacing.xl),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () => context.go(AppRoutes.students),
                    child: const Text('Ø¥Ù„ØºØ§Ø¡'),
                  ),
                  SizedBox(width: AppSpacing.sm),
                  ElevatedButton(
                    onPressed: () => context.go(AppRoutes.students),
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
