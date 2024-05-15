import 'package:fit_body/Utils/constants/exports.dart';

class OnboardingSkipPage extends StatelessWidget {
  const OnboardingSkipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 35.w,
      top: 50.h,
      child: GestureDetector(
        onTap: () => OnboardingController.instance.skipPage(),
        child: const Row(mainAxisSize: MainAxisSize.min, children: [
          Text("Skip ", style: TextStyle(color: MColors.yellowishColor)),
          Icon(Icons.play_arrow_rounded,
              color: MColors.yellowishColor, size: 16)
        ]),
      ),
    );
  }
}
