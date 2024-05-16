import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SetupStartScreen extends StatelessWidget {
  const SetupStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              child: Image(
                image: AssetImage(MImageStrings.setupscreenwomen),
                fit: BoxFit.fitWidth,
              ),
            ),
            MHelperFunctions.giveHeight(30.h),
            Text(MTextString.consistencyiskey,
                    style: MTextStyles.mHeadingStyle(
                        fontSize: 30.sp,
                        color: MColors.yellowishColor,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center)
                .animate()
                .fadeIn(duration: const Duration(seconds: 2)),
            MHelperFunctions.giveHeight(30.h),
            ResizableContainer(
                applyWidgetPadding: EdgeInsets.symmetric(horizontal: 35.w),
                widgets: [
                  MHelperFunctions.giveHeight(30.h),
                  Text(MTextString.loremIpsum,
                          style: MTextStyles.mNormalStyle(
                              color: MColors.balckColor),
                          textAlign: TextAlign.center)
                      .animate()
                      .fadeIn(duration: const Duration(seconds: 3)),
                  MHelperFunctions.giveHeight(30.h),
                ]),
            MHelperFunctions.giveHeight(30.h),
            GlassyEffectElevatedBtn(
                btnText: "Next",
                onPress: () => MHelperFunctions.navigateTo(
                    context, const SetupGenderScreen())),
          ],
        ),
      ),
    );
  }
}
