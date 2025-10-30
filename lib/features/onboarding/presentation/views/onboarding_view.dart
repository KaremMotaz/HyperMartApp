import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// import '../../../../../core/helpers/constants.dart';
import '../../../../../core/routing/routes.dart';
// import '../../../../core/services/cache_helper.dart';
import '../../models/onboarding_model.dart';
import '../widgets/onboarding_view_body.dart';
import '../widgets/page_view_item.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentPageIndex = 0;
  late final PageController _pageController;
  late final List<PageViewItem> pages;

  @override
  void initState() {
    super.initState();
    pages = OnboardingModel.pages
        .map((model) => PageViewItem(onboardingModel: model))
        .toList();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentPageIndex = _pageController.page!.round();
      });
    });
  }

  void goToNextPage() {
    if (currentPageIndex < pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void finishOnboarding(BuildContext context) {
    // CacheHelper.set(key: kHasSeenOnboarding, value: true);
    GoRouter.of(context).pushReplacement(Routes.loginView);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: OnboardingViewBody(
        currentPageIndex: currentPageIndex,
        pageController: _pageController,
        pages: pages,
        onNextPressed: goToNextPage,
        onFinishPressed: () => finishOnboarding(context),
      ),
    );
  }
}
