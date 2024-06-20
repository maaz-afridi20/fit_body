import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SetupPhysicalActivityLevel extends StatelessWidget {
  const SetupPhysicalActivityLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MAppbar(
            titleColor: MColors.yellowishColor,
            titleFontsize: 14.sp,
            showActionWidget: false),
        body: Column(children: [
          Text(MTextString.physicalactiviylevel,
              style: MTextStyles.mHeadingStyle(fontSize: 25)),
          MHelperFunctions.mHeightBox(30),
          Text(MTextString.physicalactivitydetail,
              style: MTextStyles.mNormalStyle(), textAlign: TextAlign.center),
          MHelperFunctions.mHeightBox(100),
          MCircularContainer(
              titleText: "Beginner",
              textcolor: MColors.purpleColor,
              textFontsize: 24.sp,
              textFontWeight: FontWeight.w500),
          MHelperFunctions.mHeightBox(36),
          MCircularContainer(
                  titleText: "Intermediate",
                  textcolor: MColors.purpleColor,
                  textFontsize: 24.sp,
                  textFontWeight: FontWeight.w500)
              .animate()
              .fadeIn(duration: const Duration(seconds: 2)),
          MHelperFunctions.mHeightBox(36),
          MCircularContainer(
              titleText: "Advance",
              backgroundColor: MColors.yellowishColor,
              textFontsize: 24.sp,
              textFontWeight: FontWeight.w500),
          //
          //! continuee btn...
          MHelperFunctions.mHeightBox(50),
          GlassyEffectElevatedBtn(
              btnText: "Continue",
              onPress: () => MHelperFunctions.navigateTo(
                  context, const SetupProfileScreen())),

          MHelperFunctions.mHeightBox(30)
        ])
            .px(35.w)
            .wrapWithSingleChildScrollView()
            .animate()
            .fadeIn(duration: const Duration(seconds: 2)));
  }
}
