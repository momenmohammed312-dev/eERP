import '../../../imports/imports.dart';

class AppFormFields {
  static Widget text({
    required TextEditingController controller,
    required String label,
    String? Function(String?)? validator,
    bool obscureText = false,
    TextInputType? keyboardType,
  }) =>
      Padding(
        padding: EdgeInsets.only(bottom: AppSpacing.md),
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          decoration: InputDecoration(labelText: label),
          validator: validator,
        ),
      );
}
