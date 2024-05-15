import 'package:fit_body/Utils/constants/exports.dart';

class SetupGoal extends StatelessWidget {
  const SetupGoal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: MAppbar(titleColor: MColors.yellowishColor, titleFontsize: 14.sp),
      body: Column(
        children: [
          Text(MTextString.whatisyourgoal,
              style: MTextStyles.mHeadingStyle(fontSize: 25)),
          MHelperFunctions.giveHeight(30.h),
          Text(MTextString.loremIpsum,
                  style: MTextStyles.mNormalStyle(),
                  textAlign: TextAlign.center)
              .px(35.w),
          MHelperFunctions.giveHeight(40.h),

          //
          //! Goal selecting radio form...
          const GoalSelectorForm(),

          //
          const Spacer(),
          GlassyEffectElevatedBtn(
              btnText: "Continue",
              onPress: () => MHelperFunctions.navigateTo(
                  context, const SetupPhysicalActivityLevel())),
          MHelperFunctions.giveHeight(30.h),
        ],
      ),
    );
  }
}
