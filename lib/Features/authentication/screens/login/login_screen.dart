import 'package:fit_body/Utils/constants/exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(MTextString.login,
            style: MTextStyles.mHeadingStyle(color: MColors.yellowishColor)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MHelperFunctions.giveHeight(50.h),
          Text(MTextString.wellcome, style: MTextStyles.mHeadingStyle())
              .px(35.w),
          MHelperFunctions.giveHeight(23.h),
          Text(MTextString.loremIpsum,
                  style: MTextStyles.mNormalStyle(),
                  textAlign: TextAlign.center)
              .px(35.w),
          MHelperFunctions.giveHeight(74.h),

          //
          //! Login Form...
          const MLoginForm(),

          //! login btn..
          MHelperFunctions.giveHeight(40.h),
          GlassyEffectElevatedBtn(
              btnText: MTextString.login,
              onPress: () => MHelperFunctions.navigateOff(
                  context, const SetupStartScreen())),

          //!
          MHelperFunctions.giveHeight(29.h),
          Text(MTextString.orsignupwith, style: MTextStyles.mNormalStyle()),

          //!social icons row...
          MHelperFunctions.giveHeight(20.h),
          MSocialIconRow(
            fingerprintOnPress: () =>
                Get.to(() => const FingerPrintSignupScreen()),
          ),

          const Spacer(),
          GestureDetector(
            onTap: () =>
                MHelperFunctions.navigateTo(context, const SignUpScreen()),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: MTextString.dontaccount,
                style: MTextStyles.mNormalStyle(),
              ),
              TextSpan(
                text: MTextString.signup,
                style: MTextStyles.mNormalStyle(color: MColors.yellowishColor),
              )
            ])),
          ),

          MHelperFunctions.giveHeight(20.h),
        ],
      ),
    );
  }
}
