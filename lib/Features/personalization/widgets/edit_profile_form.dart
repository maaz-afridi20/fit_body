import 'package:fit_body/Utils/constants/exports.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Full Name",
          style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
      MHelperFunctions.mHeightBox(8),
      const MTextField(hintText: "Madison Smith"),
      MHelperFunctions.mHeightBox(15),
      Text("Email",
          style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
      MHelperFunctions.mHeightBox(8),
      const MTextField(hintText: "example@gmail.com"),
      MHelperFunctions.mHeightBox(15),
      Text("Mobile Number",
          style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
      MHelperFunctions.mHeightBox(8),
      const MTextField(hintText: "+9268268992648"),
      MHelperFunctions.mHeightBox(15),
      Text("Date Of Birth",
          style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
      MHelperFunctions.mHeightBox(8),
      const MTextField(hintText: "01/ 04 / 1999"),
      MHelperFunctions.mHeightBox(15),
      Text("Weigth",
          style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
      MHelperFunctions.mHeightBox(8),
      const MTextField(
          hintText: "75 Kg", keyboardInputType: TextInputType.number),
      MHelperFunctions.mHeightBox(15),
      Text("Height",
          style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
      MHelperFunctions.mHeightBox(8),
      const MTextField(
          hintText: "1.65 CM", keyboardInputType: TextInputType.number),
      MHelperFunctions.mHeightBox(28),
      Center(
          child: MCircularContainer(
              heightOfContainer: 36.h,
              widthOfContainer: 150.w,
              backgroundColor: MColors.yellowishColor,
              textFontsize: 17.sp,
              textFontWeight: FontWeight.w500,
              onPress: () => Get.back(),
              titleText: "Update Profile")),
      MHelperFunctions.mHeightBox(30)
    ]);
  }
}
