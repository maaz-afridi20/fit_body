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
        ));
  }
}
