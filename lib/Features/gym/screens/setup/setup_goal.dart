import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SetupGoal extends StatelessWidget {
  const SetupGoal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MAppbar(
            titleColor: MColors.yellowishColor,
            titleFontsize: 14.sp,
            showActionWidget: false),
        body: Column(children: [
          Text(MTextString.whatisyourgoal,
              style: MTextStyles.mHeadingStyle(fontSize: 25)),
          MHelperFunctions.mHeightBox(30),
          Text(MTextString.loremIpsum,
                  style: MTextStyles.mNormalStyle(),
                  textAlign: TextAlign.center)
              .px(35.w),
          MHelperFunctions.mHeightBox(40),

          //
          //! Goal selecting radio form...
          const GoalSelectorForm(),

          //
          MHelperFunctions.mHeightBox(50),
          GlassyEffectElevatedBtn(
              btnText: "Continue",
              onPress: () => MHelperFunctions.navigateTo(
                  context, const SetupPhysicalActivityLevel())),
          MHelperFunctions.mHeightBox(30)
        ])
            .wrapWithSingleChildScrollView()
            .animate()
            .fadeIn(duration: const Duration(seconds: 2)));
  }
}
