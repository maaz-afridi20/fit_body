import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvoked: (didPop) => MHelperFunctions.showAppExitDialogue(context),
        child: Scaffold(
            appBar: const MAppbar(
                centerTitle: true,
                leadingWidget: Text(''),
                showActionWidget: false,
                showLeadingWidget: false,
                appbarTitle: "Login",
                titleColor: MColors.yellowishColor),
            body: Animate(
                effects: const [FadeEffect(duration: Duration(seconds: 3))],
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MHelperFunctions.mHeightBox(50),
                      Text(MTextString.wellcome,
                              style: MTextStyles.mHeadingStyle())
                          .px(35.w),
                      MHelperFunctions.mHeightBox(23),
                      Text(MTextString.loremIpsum,
                              style: MTextStyles.mNormalStyle(),
                              textAlign: TextAlign.center)
                          .px(35.w),
                      MHelperFunctions.mHeightBox(74),

                      //
                      //! Login Form...
                      const MLoginForm(),

                      //! login btn..
                      MHelperFunctions.mHeightBox(40),
                      GlassyEffectElevatedBtn(
                          btnText: MTextString.login,
                          onPress: () => MHelperFunctions.navigateOff(
                              context, const SetupStartScreen())),

                      //!
                      MHelperFunctions.mHeightBox(29),
                      Text(MTextString.orsignupwith,
                          style: MTextStyles.mNormalStyle()),

                      //!social icons row...
                      MHelperFunctions.mHeightBox(20),
                      MSocialIconRow(
                        fingerprintOnPress: () =>
                            Get.to(() => const FingerPrintSignupScreen()),
                      ),

                      MHelperFunctions.mHeightBox(50),
                      GestureDetector(
                          onTap: () => MHelperFunctions.navigateTo(
                              context, const SignUpScreen()),
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: MTextString.dontaccount,
                              style: MTextStyles.mNormalStyle(),
                            ),
                            TextSpan(
                              text: MTextString.signup,
                              style: MTextStyles.mNormalStyle(
                                  color: MColors.yellowishColor),
                            )
                          ]))),

                      MHelperFunctions.mHeightBox(20)
                    ]).wrapWithSingleChildScrollView())));
  }
}
