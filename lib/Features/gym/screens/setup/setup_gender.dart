import '../../../../Utils/constants/exports.dart';

class SetupGenderScreen extends StatelessWidget {
  const SetupGenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
            onTap: () => Get.back(),
            child: Icon(Icons.arrow_back_ios,
                size: 15.sp, color: MColors.yellowishColor)),
        title: Text('Back',
            style: MTextStyles.mNormalStyle(
                fontSize: 15, color: MColors.yellowishColor)),
      ),
      body: Column(
        children: [
          MHelperFunctions.giveHeight(30.h),
          Text(MTextString.whatsyourgendr,
              style: MTextStyles.mHeadingStyle(fontSize: 25)),
          MHelperFunctions.giveHeight(15.h),
          ResizableContainer(
              applyWidgetPadding: EdgeInsets.symmetric(horizontal: 35.w),
              widgets: [
                MHelperFunctions.giveHeight(18.h),
                Text(
                  MTextString.loremIpsum,
                  style: MTextStyles.mNormalStyle(),
                  textAlign: TextAlign.center,
                ),
                MHelperFunctions.giveHeight(18.h),
              ]),
          MHelperFunctions.giveHeight(45.h),

          //! gender container.
          MGenderContainer(
            backgroundColor: Colors.white.withOpacity(0.2),
            backgroundImage: const AssetImage(MImageStrings.gendermale),
            borderWidth: 1.4.w,
          ),
          MHelperFunctions.giveHeight(10.h),
          Text("Male", style: MTextStyles.mHeadingStyle(fontSize: 20)),
          MHelperFunctions.giveHeight(19.h),
          const MGenderContainer(
            backgroundColor: MColors.yellowishColor,
            backgroundImage: AssetImage(MImageStrings.genderfemale),
          ),
          MHelperFunctions.giveHeight(10.h),
          Text("Female", style: MTextStyles.mHeadingStyle(fontSize: 20)),
          MHelperFunctions.giveHeight(45.h),
          GlassyEffectElevatedBtn(
              btnText: "Continue",
              onPress: () =>
                  MHelperFunctions.navigateTo(context, const SetupAgeScreen())),
        ],
      ),
    );
  }
}
