import 'package:fit_body/Utils/constants/exports.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Full Name",
            style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
        MHelperFunctions.giveHeight(8.h),
        const MTextField(hintText: "Madison Smith"),
        MHelperFunctions.giveHeight(15.h),
        Text("Email",
            style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
        MHelperFunctions.giveHeight(8.h),
        const MTextField(hintText: "example@gmail.com"),
        MHelperFunctions.giveHeight(15.h),
        Text("Mobile Number",
            style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
        MHelperFunctions.giveHeight(8.h),
        const MTextField(hintText: "+9268268992648"),
        MHelperFunctions.giveHeight(15.h),
        Text("Date Of Birth",
            style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
        MHelperFunctions.giveHeight(8.h),
        const MTextField(hintText: "01/ 04 / 1999"),
        MHelperFunctions.giveHeight(15.h),
        Text("Weigth",
            style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
        MHelperFunctions.giveHeight(8.h),
        const MTextField(
            hintText: "75 Kg", keyboardInputType: TextInputType.number),
        MHelperFunctions.giveHeight(15.h),
        Text("Height",
            style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
        MHelperFunctions.giveHeight(8.h),
        const MTextField(
            hintText: "1.65 CM", keyboardInputType: TextInputType.number),
        MHelperFunctions.giveHeight(28.h),
        Center(
            child: MCircularContainer(
                heightOfContainer: 36.h,
                widthOfContainer: 150.w,
                backgroundColor: MColors.yellowishColor,
                textFontsize: 17.sp,
                textFontWeight: FontWeight.w500,
                onPress: () => Get.back(),
                titleText: "Update Profile")),
        MHelperFunctions.giveHeight(30.h),
      ],
    );
  }
}
