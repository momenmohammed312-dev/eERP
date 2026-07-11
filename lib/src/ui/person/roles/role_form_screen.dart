import '../../../imports/imports.dart';

class RoleFormScreen extends ConsumerStatefulWidget {
  final int? roleId;
  const RoleFormScreen({super.key, this.roleId});

  @override
  ConsumerState<RoleFormScreen> createState() => _RoleFormScreenState();
}

class _RoleFormScreenState extends ConsumerState<RoleFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();

  @override
  void dispose() {
    _nameCtrl.dispose();
    super.dispose();
  }

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
              Text('بيانات الدور',
                  style: context.theme.textTheme.titleLarge),
              SizedBox(height: AppSpacing.lg),
              TextFormField(
                controller: _nameCtrl,
                decoration: const InputDecoration(labelText: 'اسم الدور'),
                validator: (v) =>
                    (v == null || v.trim().isEmpty) ? 'يرجى إدخال اسم الدور' : null,
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