import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SetupHeight extends StatelessWidget {
  const SetupHeight({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HeightWeightSelectController.instance;
    return Scaffold(
      appBar: MAppbar(
          titleColor: MColors.yellowishColor,
          titleFontsize: 14.sp,
          showActionWidget: false),
      body: Column(children: [
        Text(MTextString.whatisyourheight,
                style: MTextStyles.mHeadingStyle(fontSize: 25))
            .animate()
            .fadeIn(duration: const Duration(seconds: 2)),
        MHelperFunctions.mHeightBox(30),
        Text(MTextString.loremIpsum,
                style: MTextStyles.mNormalStyle(), textAlign: TextAlign.center)
            .px(35.w),

        //! height CM
        MHelperFunctions.mHeightBox(40),

        Obx(() => RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: '${controller.selectedHeight.value}',
                  style: MTextStyles.mHeadingStyle(fontSize: 50.sp)),
              TextSpan(
                  text: "Cm",
                  style: MTextStyles.mHeadingStyle(
                      fontSize: 20.sp, color: Colors.white.withOpacity(0.5)))
            ]))),

        //! hight selector... wheel list view.
        MHelperFunctions.mHeightBox(30),
        const HeightSelector(),

        //! Continuee btn..
        const Spacer(),
        GlassyEffectElevatedBtn(
            btnText: "Continue",
            onPress: () =>
                MHelperFunctions.navigateTo(context, const SetupGoal())),
        MHelperFunctions.mHeightBox(30)
      ]).animate().fadeIn(duration: const Duration(seconds: 3)),
    );
  }
}
