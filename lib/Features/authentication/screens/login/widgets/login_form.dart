import 'package:fit_body/Utils/constants/exports.dart';

class MLoginForm extends StatelessWidget {
  const MLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ResizableContainer(
        applyWidgetPadding: EdgeInsets.symmetric(horizontal: 40.w),
        widgets: [
          MHelperFunctions.giveHeight(28.h),
          Text("Username & Email",
              style: MTextStyles.mHeadingStyle(
                  color: MColors.balckColor, fontWeight: FontWeight.w500)),
          MHelperFunctions.giveHeight(7.h),

          //! Textfields..
          const MTextField(hintText: "Example@gmail.com"),
          MHelperFunctions.giveHeight(19.h),

          //!----- password text
          Text("Password",
              style: MTextStyles.mHeadingStyle(
                  color: MColors.balckColor, fontWeight: FontWeight.w500)),
          MHelperFunctions.giveHeight(7.h),
          //!-----Textfield
          const MTextField(hintText: " * * * * * * "),
          MHelperFunctions.giveHeight(12.h),
          //!-----
          Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => MHelperFunctions.navigateTo(
                    context, const ForgotPasswordScreen()),
                child: Text("Forgot Password?",
                    style: MTextStyles.mNormalStyle(
                        color: MColors.balckColor,
                        fontWeight: FontWeight.w500)),
              )),
          MHelperFunctions.giveHeight(20.h),
        ]);
  }
}
