import 'package:fit_body/Utils/constants/exports.dart';

class FingerPrintSignupScreen extends StatelessWidget {
  const FingerPrintSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: const MAppbar(
          centerTitle: true,
          appbarTitle: "Set Your Fingerprint",
          titleColor: MColors.yellowishColor),
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
