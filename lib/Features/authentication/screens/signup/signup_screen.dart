import '../../../../Utils/constants/exports.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(MTextString.createaccount,
            style: MTextStyles.mHeadingStyle(color: MColors.yellowishColor)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
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

            //! MSocialIconRow
            MHelperFunctions.giveHeight(16.h),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: MTextString.alreadyaccount,
                style: MTextStyles.mNormalStyle(),
              ),
              const TextSpan(text: " "),
              TextSpan(
                text: MTextString.login,
                style: MTextStyles.mNormalStyle(color: MColors.yellowishColor),
              )
            ])),
            MHelperFunctions.giveHeight(20.h),
          ],
        ),
      ),
    );
  }
}
