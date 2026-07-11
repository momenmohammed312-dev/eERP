import '../../../imports/imports.dart';
import '../../shared/widgets/app_form_fields.dart';

class UserAccountFormScreen extends ConsumerStatefulWidget {
  final int? accountId;
  const UserAccountFormScreen({super.key, this.accountId});
  @override
  ConsumerState<UserAccountFormScreen> createState() =>
      _UserAccountFormScreenState();
}

class _UserAccountFormScreenState extends ConsumerState<UserAccountFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _ctrls = <String, TextEditingController>{};
  bool _isActive = true;
  @override
  void dispose() {
    for (final c in _ctrls.values) { c.dispose(); }
    super.dispose();
  }

  TextEditingController _c(String k) =>
      _ctrls.putIfAbsent(k, () => TextEditingController());

  String? _req(String? v) =>
      (v == null || v.trim().isEmpty) ? 'حقل مطلوب' : null;

  @override
  Widget build(BuildContext context) {
    final isEdit = widget.accountId != null;
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSpacing.margin),
      child: AppCard(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(isEdit ? 'تعديل مستخدم' : 'إضافة مستخدم',
                  style: context.theme.textTheme.titleLarge),
              SizedBox(height: AppSpacing.lg),
              AppFormFields.text(controller: _c('u'), label: 'اسم المستخدم', validator: _req),
              AppFormFields.text(controller: _c('p'), label: 'كلمة المرور',
                  obscureText: true, validator: (v) => !isEdit ? _req(v) : null),
              AppFormFields.text(controller: _c('pid'), label: 'رقم الشخص',
                  keyboardType: TextInputType.number, validator: _req),
              AppFormFields.text(controller: _c('rid'), label: 'رقم الدور',
                  keyboardType: TextInputType.number, validator: _req),
              Row(children: [
                const Text('نشط'),
                Switch(value: _isActive, onChanged: (v) => setState(() => _isActive = v)),
              ]),
              SizedBox(height: AppSpacing.xl),
              Row(children: [
                OutlinedButton(onPressed: () => context.go(AppRoutes.userAccounts), child: const Text('إلغاء')),
                SizedBox(width: AppSpacing.sm), ElevatedButton(onPressed: _submit, child: const Text('حفظ')),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    context.showSuccessSnackBar('تم الحفظ');
    context.go(AppRoutes.userAccounts);
  }
}
