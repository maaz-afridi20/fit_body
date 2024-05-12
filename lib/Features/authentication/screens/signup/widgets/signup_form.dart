import '../../../../../Utils/constants/exports.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ResizableContainer(
        applyWidgetPadding: EdgeInsets.symmetric(horizontal: 40.w),
        widgets: [
          MHelperFunctions.giveHeight(32.h),
          Text(MTextString.fullname,
              style: MTextStyles.mHeadingStyle(color: MColors.balckColor)),
          MHelperFunctions.giveHeight(7.h),
          const MTextField(hintText: "Example peter"),
          MHelperFunctions.giveHeight(19.h),
          Text(MTextString.emailormobile,
              style: MTextStyles.mHeadingStyle(color: MColors.balckColor)),
          MHelperFunctions.giveHeight(7.h),
          const MTextField(hintText: "+9246372891"),
          MHelperFunctions.giveHeight(19.h),
          Text(MTextString.password,
              style: MTextStyles.mHeadingStyle(color: MColors.balckColor)),
          MHelperFunctions.giveHeight(7.h),
          const MTextField(hintText: "* * * * *"),
          MHelperFunctions.giveHeight(19.h),
          Text(MTextString.confirmpassword,
              style: MTextStyles.mHeadingStyle(color: MColors.balckColor)),
          const MTextField(hintText: "* * * * *"),
          MHelperFunctions.giveHeight(29.h),
        ]);
  }
}
