import '../../../../Utils/constants/exports.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: const MAppbar(
          centerTitle: true,
          appbarTitle: "Forgot Password",
          titleColor: MColors.yellowishColor),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MHelperFunctions.giveHeight(30.h),
          Text(MTextString.forgotpass, style: MTextStyles.mHeadingStyle()),
          MHelperFunctions.giveHeight(20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: Text(MTextString.loremIpsum,
                style: MTextStyles.mNormalStyle(), textAlign: TextAlign.center),
          ),
          MHelperFunctions.giveHeight(37.h),
          ResizableContainer(
              applyWidgetPadding: EdgeInsets.symmetric(horizontal: 45.w),
              widgets: [
                MHelperFunctions.giveHeight(25.h),
                Text(MTextString.enteremail,
                    style: MTextStyles.mHeadingStyle(
                        color: MColors.balckColor,
                        fontWeight: FontWeight.w500)),
                MHelperFunctions.giveHeight(9.h),
                MTextField(hintText: MTextString.examplpe),
                MHelperFunctions.giveHeight(26.h),
              ]),
          MHelperFunctions.giveHeight(45.h),
          GlassyEffectElevatedBtn(
              btnText: "Continue",
              onPress: () => Get.to(() => const SetPasswordScreen())),
        ],
      ),
    );
  }
}
