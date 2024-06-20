import 'package:fit_body/Utils/constants/exports.dart';

class MLoginForm extends StatelessWidget {
  const MLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ResizableContainer(
        applyWidgetPadding: EdgeInsets.symmetric(horizontal: 40.w),
        widgets: [
          MHelperFunctions.mHeightBox(28),
          Text("Username & Email",
              style: MTextStyles.mHeadingStyle(
                  color: MColors.balckColor, fontWeight: FontWeight.w500)),
          MHelperFunctions.mHeightBox(7),

          //! Textfields..
          const MTextField(hintText: "Example@gmail.com"),
          MHelperFunctions.mHeightBox(19),

          //!----- password text
          Text("Password",
              style: MTextStyles.mHeadingStyle(
                  color: MColors.balckColor, fontWeight: FontWeight.w500)),
          MHelperFunctions.mHeightBox(7),
          //!-----Textfield
          const MTextField(hintText: " * * * * * * "),
          MHelperFunctions.mHeightBox(12),
          //!-----
          Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () => MHelperFunctions.navigateTo(
                      context, const ForgotPasswordScreen()),
                  child: Text("Forgot Password?",
                      style: MTextStyles.mNormalStyle(
                          color: MColors.balckColor,
                          fontWeight: FontWeight.w500)))),
          MHelperFunctions.mHeightBox(20.h)
        ]);
  }
}
