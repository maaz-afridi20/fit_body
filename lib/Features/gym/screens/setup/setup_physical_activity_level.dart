import 'package:fit_body/Utils/constants/exports.dart';

class SetupPhysicalActivityLevel extends StatelessWidget {
  const SetupPhysicalActivityLevel({super.key});

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
          ),
          MHelperFunctions.giveHeight(36.h),
          MCircularContainer(
            titleText: "Advance",
            backgroundColor: MColors.yellowishColor,
            textFontsize: 24.sp,
            textFontWeight: FontWeight.w500,
          ),
          //
          //! continuee btn...
          const Spacer(),
          GlassyEffectElevatedBtn(
              btnText: "Continue",
              onPress: () =>
                  MHelperFunctions.navigateTo(context, const ProfileScreen())),

          MHelperFunctions.giveHeight(30.h),
        ],
      ).px(35.w),
    );
  }
}
