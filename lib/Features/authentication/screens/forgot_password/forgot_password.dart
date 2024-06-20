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
          showActionWidget: false,
          titleColor: MColors.yellowishColor),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MHelperFunctions.mHeightBox(30),
          Text(MTextString.forgotpass, style: MTextStyles.mHeadingStyle()),
          MHelperFunctions.mHeightBox(20),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: Text(MTextString.loremIpsum,
                  style: MTextStyles.mNormalStyle(),
                  textAlign: TextAlign.center)),
          MHelperFunctions.mHeightBox(37),
          ResizableContainer(
              applyWidgetPadding: EdgeInsets.symmetric(horizontal: 45.w),
              widgets: [
                MHelperFunctions.mHeightBox(25),
                Text(MTextString.enteremail,
                    style: MTextStyles.mHeadingStyle(
                        color: MColors.balckColor,
                        fontWeight: FontWeight.w500)),
                MHelperFunctions.mHeightBox(9),
                MTextField(hintText: MTextString.examplpe),
                MHelperFunctions.mHeightBox(26)
              ]),
          MHelperFunctions.mHeightBox(45),
          GlassyEffectElevatedBtn(
              btnText: "Continue",
              onPress: () => Get.to(() => const SetPasswordScreen()))
        ],
      ),
    );
  }
}
