import '../../../../Utils/constants/exports.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading:
            const Icon(Icons.arrow_back_ios, color: MColors.yellowishColor),
        title: Text(MTextString.createaccount,
            style: MTextStyles.mHeadingStyle(color: MColors.yellowishColor)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MHelperFunctions.giveHeight(30.h),
          Text(MTextString.forgotpass, style: MTextStyles.mHeadingStyle()),
          MHelperFunctions.giveHeight(20.h),
          Text(MTextString.loremIpsum,
              style: MTextStyles.mNormalStyle(), textAlign: TextAlign.center),
          MHelperFunctions.giveHeight(37.h),
          ResizableContainer(widgets: [
            MHelperFunctions.giveHeight(25.h),
          ]),
          Text(MTextString.loremIpsum,
              style: MTextStyles.mNormalStyle(), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
