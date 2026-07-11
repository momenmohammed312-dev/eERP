import '../../../imports/imports.dart';

class EmployeeFormScreen extends ConsumerStatefulWidget {
  final int? employeeId;
  const EmployeeFormScreen({super.key, this.employeeId});

  @override
  ConsumerState<EmployeeFormScreen> createState() => _EmployeeFormScreenState();
}

class _EmployeeFormScreenState extends ConsumerState<EmployeeFormScreen> {
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
              Text('بيانات الموظف',
                  style: context.theme.textTheme.titleLarge),
              SizedBox(height: AppSpacing.lg),
              TextFormField(
                decoration: const InputDecoration(labelText: 'الاسم الكامل'),
              ),
              SizedBox(height: AppSpacing.md),
              TextFormField(
                decoration: const InputDecoration(labelText: 'المسمى الوظيفي'),
              ),
              SizedBox(height: AppSpacing.md),
              TextFormField(
                decoration: const InputDecoration(labelText: 'رقم الهاتف'),
              ),
              SizedBox(height: AppSpacing.xl),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () => context.go(AppRoutes.students),
                    child: const Text('إلغاء'),
                  ),
                  SizedBox(width: AppSpacing.sm),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.showSuccessSnackBar('تم الحفظ');
                      }
                    },
                    child: const Text('حفظ'),
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