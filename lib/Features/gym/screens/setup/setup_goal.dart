import 'package:fit_body/Utils/constants/exports.dart';

class SetupGoal extends StatelessWidget {
  const SetupGoal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
            onTap: () => MHelperFunctions.navigateBack(context),
            child: Icon(Icons.arrow_back_ios,
                size: 15.sp, color: MColors.yellowishColor)),
        title: Text("Back",
            style: MTextStyles.mNormalStyle(
                fontSize: 15, color: MColors.yellowishColor)),
      ),
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
