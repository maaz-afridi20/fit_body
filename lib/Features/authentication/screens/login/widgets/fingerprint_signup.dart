import 'package:fit_body/Utils/constants/exports.dart';

class FingerPrintSignupScreen extends StatelessWidget {
  const FingerPrintSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LocalAuthRepo());
    return Scaffold(
        appBar: const MAppbar(
            centerTitle: true,
            appbarTitle: "Set Your Fingerprint",
            showActionWidget: false,
            titleColor: MColors.yellowishColor),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(MTextString.addFingerprint,
                  style: MTextStyles.mNormalStyle(),
                  textAlign: TextAlign.center)
              .px(35.w),
          MHelperFunctions.mHeightBox(30),
          ResizableContainer(widgets: [
            MHelperFunctions.mHeightBox(20),
            const Center(
                child: Image(
                    image: AssetImage(MImageStrings.fingerprintmarkimage))),
            MHelperFunctions.mHeightBox(20),
          ]),
          MHelperFunctions.mHeightBox(45),
          GlassyEffectElevatedBtn(
              btnText: "Skip",
              onPress: () => MHelperFunctions.navigateBack(context)),
          MHelperFunctions.mHeightBox(16),
          GlassyEffectElevatedBtn(
              btnText: "Continue", onPress: () => controller.authenticateUser())
        ]));
  }
}
