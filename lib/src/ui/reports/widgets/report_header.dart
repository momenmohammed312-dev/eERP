import '../../../imports/imports.dart';

class ReportHeader extends StatelessWidget {
  const ReportHeader({super.key, required this.title, required this.onRefresh});

  final String title;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: context.theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w600,
              letterSpacing: -0.02,
            ),
          ),
        ),
        IconButton(
          onPressed: onRefresh,
          icon: const Icon(Icons.refresh, size: 20),
        ),
      ],
    );
  }
}