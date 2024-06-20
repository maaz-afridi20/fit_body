import '../../../../Utils/constants/exports.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MColors.balckColor,
        appBar: const MAppbar(
            centerTitle: true,
            appbarTitle: "Create Account",
            showActionWidget: false,
            titleColor: MColors.yellowishColor),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          MHelperFunctions.mHeightBox(30),
          Text(MTextString.letstart, style: MTextStyles.mHeadingStyle()),

          //! Sign Up Form
          MHelperFunctions.mHeightBox(35),
          const SignupForm(),

          //! privacy policy
          MHelperFunctions.mHeightBox(29),
          const MPrivacyPolicyTextWidget(),

          //! Sign up button
          MHelperFunctions.mHeightBox(20),
          GlassyEffectElevatedBtn(btnText: MTextString.signup),

          //! or signup with text.
          MHelperFunctions.mHeightBox(19),
          Text(MTextString.orsignupwith, style: MTextStyles.mNormalStyle()),

          //! MSocialIconRow
          MHelperFunctions.mHeightBox(18),
          const MSocialIconRow(),

          //! already have account
          MHelperFunctions.mHeightBox(16),
          GestureDetector(
              onTap: () => MHelperFunctions.navigateBack(context),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: MTextString.alreadyaccount,
                    style: MTextStyles.mNormalStyle()),
                const TextSpan(text: " "),
                TextSpan(
                    text: MTextString.login,
                    style:
                        MTextStyles.mNormalStyle(color: MColors.yellowishColor))
              ]))),
          MHelperFunctions.mHeightBox(20)
        ]).wrapWithSingleChildScrollView());
  }
}
