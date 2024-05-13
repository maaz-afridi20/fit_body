import 'package:fit_body/Utils/constants/exports.dart';

class SetupHeight extends StatelessWidget {
  const SetupHeight({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HeightSelectController.instance;
    return Scaffold(
      backgroundColor: Colors.transparent,
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
          Text(MTextString.whatisyourweight,
              style: MTextStyles.mHeadingStyle(fontSize: 25)),
          MHelperFunctions.giveHeight(30.h),
          Text(MTextString.loremIpsum,
                  style: MTextStyles.mNormalStyle(),
                  textAlign: TextAlign.center)
              .px(35.w),

          //! height CM
          MHelperFunctions.giveHeight(40.h),

          Obx(() => RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: '${controller.selectedHeight.value}',
                    style: MTextStyles.mHeadingStyle(fontSize: 50.sp)),
                TextSpan(
                    text: "Cm",
                    style: MTextStyles.mHeadingStyle(
                        fontSize: 20.sp, color: Colors.white.withOpacity(0.5))),
              ]))),

          //! hight selector... wheel list view.
          MHelperFunctions.giveHeight(30.h),
          const HeightSelector(),

          //! Continuee btn..
          const Spacer(),
          GlassyEffectElevatedBtn(
              btnText: "Continue",
              onPress: () =>
                  MHelperFunctions.navigateTo(context, const SetupGoal())),
          MHelperFunctions.giveHeight(30.h),
        ],
      ),
    );
  }
}
