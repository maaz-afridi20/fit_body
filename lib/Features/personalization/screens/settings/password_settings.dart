import 'package:fit_body/Utils/constants/exports.dart';

class PasswordSettingsScreen extends StatelessWidget {
  const PasswordSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: const MAppbar(appbarTitle: "Password Settings"),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            40.heightBox,
            Text('Current Password',
                style: MTextStyles.mNormalStyle(
                    fontWeight: FontWeight.w600,
                    color: MColors.darkPurpleColor)),
            10.heightBox,
            MTextField(
                hintText: MTextString.starss,
                suffix: const Icon(Iconsax.eye_slash,
                    color: MColors.darkPurpleColor)),
            20.heightBox,
            Align(
                alignment: Alignment.centerRight,
                child: Text(MTextString.forgotpass,
                    style:
                        MTextStyles.mNormalStyle(fontWeight: FontWeight.w600))),
            20.heightBox,
            Text('New Password',
                style: MTextStyles.mNormalStyle(
                    fontWeight: FontWeight.w600,
                    color: MColors.darkPurpleColor)),
            10.heightBox,
            MTextField(
                hintText: MTextString.starss,
                suffix: const Icon(Iconsax.eye_slash,
                    color: MColors.darkPurpleColor)),
            20.heightBox,
            Text('Confirm Password',
                style: MTextStyles.mNormalStyle(
                    fontWeight: FontWeight.w600,
                    color: MColors.darkPurpleColor)),
            10.heightBox,
            MTextField(
                hintText: MTextString.starss,
                suffix: const Icon(Iconsax.eye_slash,
                    color: MColors.darkPurpleColor)),
            60.heightBox,
            Center(
                child: MCircularContainer(
                    titleText: "Change Password",
                    heightOfContainer: 35.h,
                    textFontsize: 17.sp,
                    widthOfContainer: 200.w,
                    backgroundColor: MColors.yellowishColor)),
          ],
        ).px(35.w),
      ),
    );
  }
}
