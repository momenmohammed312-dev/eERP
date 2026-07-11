import '../../imports/imports.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 120.w,
              child: LinearProgressIndicator(
                backgroundColor: theme.colorScheme.surfaceContainerLow,
                color: theme.colorScheme.onSurface,
              ),
            ),
            if (message != null) ...[
              SizedBox(height: AppSpacing.lg),
              Text(
                message!,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  letterSpacing: 0.02,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}