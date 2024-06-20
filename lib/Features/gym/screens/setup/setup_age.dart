import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SetupAgeScreen extends StatelessWidget {
  const SetupAgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SetupAgeController());
    return Scaffold(
        appBar: MAppbar(
            titleColor: MColors.yellowishColor,
            titleFontsize: 14.sp,
            showActionWidget: false),
        body: Stack(children: [
          Column(
            children: [
              MHelperFunctions.mHeightBox(30),
              Text(MTextString.howoldareu,
                      style: MTextStyles.mHeadingStyle(fontSize: 25))
                  .animate()
                  .fadeIn(duration: const Duration(seconds: 2)),
              MHelperFunctions.mHeightBox(30),
              Text(MTextString.loremIpsum,
                      style: MTextStyles.mNormalStyle(),
                      textAlign: TextAlign.center)
                  .px(35.w)
                  .animate()
                  .fadeIn(duration: const Duration(seconds: 3)),

              MHelperFunctions.mHeightBox(80),
              Obx(() => Text("${controller.selectedNumber.value}",
                  style: MTextStyles.mHeadingStyle(fontSize: 65))),

              MHelperFunctions.mHeightBox(30),
              const Image(image: AssetImage(MImageStrings.polygon)),
              // MHelperFunctions.giveHeight(23.h),
              MHelperFunctions.mHeightBox(
                  MHelperFunctions.screenHeight() * .025),

              const ResizableContainer(widgets: [NumberSelector()]),
              const Spacer(),
              GlassyEffectElevatedBtn(
                  btnText: "Continue",
                  onPress: () => MHelperFunctions.navigateTo(
                      context, const SetupWeightScreen())),
              MHelperFunctions.mHeightBox(20)
            ],
          ),
          Positioned(
            left: MHelperFunctions.screenWidth() * 0.40,
            top: MHelperFunctions.screenHeight() * 0.465,
            child: const StraightVerticleLine(height: 120),
          ),
          Positioned(
              right: MHelperFunctions.screenWidth() * 0.40,
              top: MHelperFunctions.screenHeight() * 0.465,
              child: const StraightVerticleLine(height: 120))
        ]));
  }
}
