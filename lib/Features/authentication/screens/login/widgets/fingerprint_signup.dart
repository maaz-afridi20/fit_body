import 'package:fit_body/Utils/constants/exports.dart';

class FingerPrintSignupScreen extends StatelessWidget {
  const FingerPrintSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(Icons.arrow_back_ios,
                color: MColors.yellowishColor)),
        title: Text(MTextString.forgotpass,
            style: MTextStyles.mHeadingStyle(color: MColors.yellowishColor)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(MTextString.loremIpsum,
                  style: MTextStyles.mNormalStyle(),
                  textAlign: TextAlign.center)
              .px(35.w),
          MHelperFunctions.giveHeight(30.h),
          ResizableContainer(widgets: [
            MHelperFunctions.giveHeight(20.h),
            const Center(
                child: Image(
                    image: AssetImage(MImageStrings.fingerprintmarkimage))),
            MHelperFunctions.giveHeight(20.h),
          ]),
          MHelperFunctions.giveHeight(45.h),
          GlassyEffectElevatedBtn(
            btnText: "Skip",
            onPress: () => MHelperFunctions.navigateBack(context),
          ),
          MHelperFunctions.giveHeight(16.h),
          const GlassyEffectElevatedBtn(btnText: "Continue"),
        ],
      ),
    );
  }
}
