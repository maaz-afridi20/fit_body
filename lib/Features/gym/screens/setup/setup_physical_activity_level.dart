import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SetupPhysicalActivityLevel extends StatelessWidget {
  const SetupPhysicalActivityLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppbar(titleColor: MColors.yellowishColor, titleFontsize: 14.sp),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Text(MTextString.physicalactiviylevel,
                style: MTextStyles.mHeadingStyle(fontSize: 25)),
            MHelperFunctions.giveHeight(30.h),
            Text(MTextString.loremIpsum,
                style: MTextStyles.mNormalStyle(), textAlign: TextAlign.center),
            MHelperFunctions.giveHeight(100.h),
            MCircularContainer(
              titleText: "Beginner",
              textcolor: MColors.purpleColor,
              textFontsize: 24.sp,
              textFontWeight: FontWeight.w500,
            ),
            MHelperFunctions.giveHeight(36.h),
            MCircularContainer(
              titleText: "Intermediate",
              textcolor: MColors.purpleColor,
              textFontsize: 24.sp,
              textFontWeight: FontWeight.w500,
            ).animate().fadeIn(duration: const Duration(seconds: 3)),
            MHelperFunctions.giveHeight(36.h),
            MCircularContainer(
              titleText: "Advance",
              backgroundColor: MColors.yellowishColor,
              textFontsize: 24.sp,
              textFontWeight: FontWeight.w500,
            ),
            //
            //! continuee btn...
            MHelperFunctions.giveHeight(50.h),
            GlassyEffectElevatedBtn(
                btnText: "Continue",
                onPress: () => MHelperFunctions.navigateTo(
                    context, const SetupProfileScreen())),

            MHelperFunctions.giveHeight(30.h),
          ],
        ).px(35.w).animate().fadeIn(duration: const Duration(seconds: 3)),
      ),
    );
  }
}
