import 'package:fit_body/Utils/constants/exports.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage(
      {super.key,
      required this.backgroundImage,
      required this.icon,
      required this.onboardingText});

  final ImageProvider backgroundImage;
  final String onboardingText;
  final ImageProvider icon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          BackgroundImageWithFilter(backgroundImage: backgroundImage),

          //! Skip Page...
          const OnboardingSkipPage(),

          ResizableContainer(widgets: [
            SizedBox(height: 12.h),
            Align(alignment: Alignment.topCenter, child: Image(image: icon)),
            SizedBox(height: 8.h),
            Align(
              alignment: Alignment.center,
              child: Text(onboardingText,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center),
            ),
            SizedBox(height: 9.h),

            //! dots..
            const Align(
                alignment: Alignment.bottomCenter,
                child: OnboardingDotNavigation()),

            SizedBox(height: 32.h)
          ]),

          //!  next page.
          const GlassyEffectElevatedBtn(btnText: "Next")
        ],
      ),
    );
  }
}
