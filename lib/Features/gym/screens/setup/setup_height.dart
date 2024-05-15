import 'package:fit_body/Utils/constants/exports.dart';

class SetupHeight extends StatelessWidget {
  const SetupHeight({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HeightWeightSelectController());
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: MAppbar(titleColor: MColors.yellowishColor, titleFontsize: 14.sp),
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
