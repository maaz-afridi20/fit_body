import 'package:fit_body/Utils/constants/exports.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                backgroundImage: AssetImage(MImageStrings.board1),
                icon: AssetImage(MImageStrings.workout),
                onboardingText:
                    "Starts your journey towards a more active life style",
              ),
              OnBoardingPage(
                backgroundImage: AssetImage(MImageStrings.board2),
                icon: AssetImage(MImageStrings.nutrituion),
                onboardingText:
                    "Find nutritions tips that fits your life style",
              ),
              OnBoardingPage(
                backgroundImage: AssetImage(MImageStrings.board3),
                icon: AssetImage(MImageStrings.community),
                onboardingText: "a community for you challenge yourself",
              ),
            ],
          )
        ],
      ),
    );
  }
}
