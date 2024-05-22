import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SetupWeightScreen extends StatelessWidget {
  const SetupWeightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HeightWeightSelectController());
    return Scaffold(
      appBar: MAppbar(titleColor: MColors.yellowishColor, titleFontsize: 14.sp),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Text(MTextString.whatisyourweight,
                style: MTextStyles.mHeadingStyle(fontSize: 25)),
            MHelperFunctions.giveHeight(30.h),
            Text(MTextString.loremIpsum,
                style: MTextStyles.mNormalStyle(), textAlign: TextAlign.center),

            //! kg selection container...
            MHelperFunctions.giveHeight(50.h),
            const KgLbSelection().px(35.w),

            //
            //
            //! List Wheel scrolling...
            MHelperFunctions.giveHeight(50.h),
            SizedBox(
              width: MHelperFunctions.screenWidth(),
              height: 80,
              child: RotatedBox(
                quarterTurns: 1,
                child: ListWheelScrollView(
                    physics: const FixedExtentScrollPhysics(),
                    itemExtent: 70,
                    onSelectedItemChanged: (value) =>
                        controller.updateSelectedWeight(value + 1),
                    overAndUnderCenterOpacity: 0.5,
                    magnification: 1.2,
                    children: List.generate(100, (index) {
                      return SizedBox(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text('${index + 1}',
                              style:
                                  MTextStyles.mHeadingStyle(fontSize: 40.sp)),
                        ),
                      );
                    })),
              ),
            ),

            //! lines of height selector...
            const ResizableContainer(
                widgets: [LinerInContainer(direction: Axis.horizontal)]),
            MHelperFunctions.giveHeight(16.h),
            const Image(image: AssetImage(MImageStrings.polygon)),
            MHelperFunctions.giveHeight(20.h),

            //
            //! Showing KG
            Obx(() => RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: '${controller.selectedWeight.value}',
                        style: MTextStyles.mHeadingStyle(fontSize: 64.sp)),
                    const TextSpan(text: "  "),
                    TextSpan(
                        text: "KG",
                        style: MTextStyles.mHeadingStyle(
                            fontSize: 20.sp,
                            color: Colors.white.withOpacity(0.5))),
                  ]),
                )),

            //! Continue btnn...
            MHelperFunctions.giveHeight(50.h),
            GlassyEffectElevatedBtn(
                btnText: "Continue",
                onPress: () =>
                    MHelperFunctions.navigateTo(context, const SetupHeight())),
            MHelperFunctions.giveHeight(20.h),
          ],
        ).animate().fadeIn(duration: const Duration(seconds: 3)),
      ),
    );
  }
}
