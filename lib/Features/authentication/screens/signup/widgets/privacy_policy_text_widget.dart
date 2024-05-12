import 'package:fit_body/Utils/constants/exports.dart';

class MPrivacyPolicyTextWidget extends StatelessWidget {
  const MPrivacyPolicyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: MTextString.bycontinueyouagree,
              style: MTextStyles.mNormalStyle()),
          const TextSpan(text: " \n "),
          TextSpan(
              text: MTextString.termsofuse,
              style: MTextStyles.mNormalStyle(color: MColors.yellowishColor)),
          const TextSpan(text: " "),
          TextSpan(text: "and", style: MTextStyles.mNormalStyle()),
          const TextSpan(text: " "),
          TextSpan(
              text: MTextString.privacypolicy,
              style: MTextStyles.mNormalStyle(color: MColors.yellowishColor)),
        ]));
  }
}
