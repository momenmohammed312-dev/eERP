import '../../imports/imports.dart';
import 'onboarding_data.dart';
import 'onboarding_view.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late final PageController _pageController;
  late final List<Map<String, dynamic>> _onboardingData;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _onboardingData = buildOnboardingData();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingView(
      pageController: _pageController,
      onboardingData: _onboardingData,
      onPageChanged: (_) {},
      onGetStarted: () => context.go(AppRoutes.login),
    );
  }
}
