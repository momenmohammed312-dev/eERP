import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'shell/app_sidebar.dart';
import 'shell/app_workspace_topbar.dart';

class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final currentRoute = GoRouterState.of(context).uri.path;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Row(
          children: [
            AppSidebar(currentRoute: currentRoute),
            Expanded(
              child: Column(
                children: [
                  const AppWorkspaceTopbar(),
                  Expanded(
                    child: ColoredBox(
                      color: Theme.of(context).colorScheme.surface,
                      child: child,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
