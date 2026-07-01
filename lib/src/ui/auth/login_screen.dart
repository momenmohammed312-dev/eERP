import '../../imports/imports.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    if (_formKey.currentState?.validate() ?? false) {
      // Direct navigation to dashboard without database integration in this phase
      context.go('/dashboard');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Directionality(
      textDirection: TextDirection.rtl, // RTL First
      child: Scaffold(
        backgroundColor: theme.colorScheme.surfaceContainerLow,
        body: Center(
          child: Container(
            width: 420.w,
            padding: EdgeInsets.all(AppSpacing.xl),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              border: Border.all(color: theme.colorScheme.outlineVariant),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // App Brand Logo/Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        HugeIcons.strokeRoundedSchoolShared01,
                        color: theme.colorScheme.primary,
                        size: 32.r,
                      ),
                      SizedBox(width: AppSpacing.sm),
                      Text(
                        'بوابة الإدارة',
                        style: theme.textTheme.headlineLarge?.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppSpacing.xs),
                  Text(
                    'قم بتسجيل الدخول للوصول إلى لوحة ERP',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                    ),
                  ),
                  SizedBox(height: AppSpacing.xl),
                  
                  // Username field
                  Text(
                    'اسم المستخدم',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: AppSpacing.xs),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      hintText: 'أدخل اسم المستخدم',
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'يرجى إدخال اسم المستخدم';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: AppSpacing.md),
                  
                  // Password field
                  Text(
                    'كلمة المرور',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: AppSpacing.xs),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      hintText: 'أدخل كلمة المرور',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                        icon: Icon(
                          _isPasswordVisible
                              ? HugeIcons.strokeRoundedView
                              : HugeIcons.strokeRoundedViewOff,
                          size: 20.r,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'يرجى إدخال كلمة المرور';
                      }
                      return null;
                    },
                  ),
                  
                  SizedBox(height: AppSpacing.xl),
                  
                  // Login Button
                  ElevatedButton(
                    onPressed: _handleLogin,
                    child: Text(
                      'تسجيل الدخول',
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
