import '../../../../../Utils/constants/exports.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ResizableContainer(
        applyWidgetPadding: EdgeInsets.symmetric(horizontal: 40.w),
        widgets: [
          MHelperFunctions.mHeightBox(32),
          Text(MTextString.fullname,
              style: MTextStyles.mHeadingStyle(
                  color: MColors.balckColor, fontWeight: FontWeight.w500)),
          MHelperFunctions.mHeightBox(7),
          const MTextField(hintText: "Example peter"),
          MHelperFunctions.mHeightBox(19),
          Text(MTextString.emailormobile,
              style: MTextStyles.mHeadingStyle(
                  color: MColors.balckColor, fontWeight: FontWeight.w500)),
          MHelperFunctions.mHeightBox(7),
          const MTextField(hintText: "+9246372891"),
          MHelperFunctions.mHeightBox(19),
          Text(MTextString.password,
              style: MTextStyles.mHeadingStyle(
                  color: MColors.balckColor, fontWeight: FontWeight.w500)),
          MHelperFunctions.mHeightBox(7),
          const MTextField(hintText: "* * * * *"),
          MHelperFunctions.mHeightBox(19),
          Text(MTextString.confirmpassword,
              style: MTextStyles.mHeadingStyle(
                  color: MColors.balckColor, fontWeight: FontWeight.w500)),
          const MTextField(hintText: "* * * * *"),
          MHelperFunctions.mHeightBox(29)
        ]);
  }
}
