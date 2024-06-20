import 'package:fit_body/Utils/constants/exports.dart';

class ProfileInfoForm extends StatelessWidget {
  const ProfileInfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(("Full Name"),
          style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
      MHelperFunctions.mHeightBox(8),
      const MTextField(hintText: "Madison Smith"),
      MHelperFunctions.mHeightBox(15),
      Text(("Nick Name"),
          style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
      MHelperFunctions.mHeightBox(8),
      const MTextField(hintText: "Madi"),
      MHelperFunctions.mHeightBox(15),
      Text(("Email"),
          style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
      MHelperFunctions.mHeightBox(8),
      const MTextField(hintText: "Madi@gmail.com"),
      MHelperFunctions.mHeightBox(15),
      Text(("Mobile Number"),
          style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
      MHelperFunctions.mHeightBox(8),
      const MTextField(hintText: "+12389278920"),
      MHelperFunctions.mHeightBox(30),
      Align(
          alignment: Alignment.center,
          child: MCircularContainer(
              onPress: () =>
                  MHelperFunctions.navigateOff(context, const HomeScreen()),
              titleText: 'Start',
              backgroundColor: MColors.yellowishColor,
              heightOfContainer: 45,
              widthOfContainer: MHelperFunctions.screenWidth() / 2))
    ]).px(35.w);
  }
}
