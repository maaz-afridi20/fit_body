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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MHelperFunctions.giveHeight(30.h),
            Text(MTextString.letstart, style: MTextStyles.mHeadingStyle()),

            //! Sign Up Form
            MHelperFunctions.giveHeight(35.h),
            const SignupForm(),

            //! privacy policy
            MHelperFunctions.giveHeight(29.h),
            const MPrivacyPolicyTextWidget(),

            //! Sign up button
            MHelperFunctions.giveHeight(20.h),
            GlassyEffectElevatedBtn(btnText: MTextString.signup),

            //! or signup with text.
            MHelperFunctions.giveHeight(19.h),
            Text(MTextString.orsignupwith, style: MTextStyles.mNormalStyle()),

            //! MSocialIconRow
            MHelperFunctions.giveHeight(18.h),
            const MSocialIconRow(),

            //! already have account
            MHelperFunctions.giveHeight(16.h),
            GestureDetector(
              onTap: () => MHelperFunctions.navigateBack(context),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: MTextString.alreadyaccount,
                  style: MTextStyles.mNormalStyle(),
                ),
                const TextSpan(text: " "),
                TextSpan(
                  text: MTextString.login,
                  style:
                      MTextStyles.mNormalStyle(color: MColors.yellowishColor),
                )
              ])),
            ),
            MHelperFunctions.giveHeight(20.h),
          ],
        ),
      ),
    );
  }
}
