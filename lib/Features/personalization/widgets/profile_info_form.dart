import 'package:fit_body/Utils/constants/exports.dart';

class ProfileInfoForm extends StatelessWidget {
  const ProfileInfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(("Full Name"),
            style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
        MHelperFunctions.giveHeight(8.h),
        const MTextField(hintText: "Madison Smith"),
        MHelperFunctions.giveHeight(15.h),
        Text(("Nick Name"),
            style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
        MHelperFunctions.giveHeight(8.h),
        const MTextField(hintText: "Madi"),
        MHelperFunctions.giveHeight(15.h),
        Text(("Email"),
            style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
        MHelperFunctions.giveHeight(8.h),
        const MTextField(hintText: "Madi@gmail.com"),
        MHelperFunctions.giveHeight(15.h),
        Text(("Mobile Number"),
            style: MTextStyles.mNormalStyle(color: MColors.purpleColor)),
        MHelperFunctions.giveHeight(8.h),
        const MTextField(hintText: "+12389278920"),
        MHelperFunctions.giveHeight(30.h),
        Align(
          alignment: Alignment.center,
          child: MCircularContainer(
              onPress: () =>
                  MHelperFunctions.navigateOff(context, const HomeScreen()),
              titleText: 'Start',
              backgroundColor: MColors.yellowishColor,
              heightOfContainer: 45,
              widthOfContainer: MHelperFunctions.screenWidth() / 2),
        )
      ],
    ).px(35.w);
  }
}
