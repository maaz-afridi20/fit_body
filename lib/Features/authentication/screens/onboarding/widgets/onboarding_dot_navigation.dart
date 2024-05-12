import 'package:fit_body/Utils/constants/exports.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return SmoothPageIndicator(
      controller: controller.pageController,
      count: 3,
      onDotClicked: controller.dotNavigationClick,
      effect: const ExpandingDotsEffect(
          activeDotColor: Colors.white,
          dotHeight: 4,
          dotColor: MColors.darkPurpleColor),
    );
  }
}
