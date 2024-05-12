import 'package:fit_body/Utils/constants/exports.dart';

class MSocialIconRow extends StatelessWidget {
  const MSocialIconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const MLoginSignupIconContainer(
            logo: AssetImage(MImageStrings.gmailLogo)),
        MHelperFunctions.giveWidth(16.w),
        const MLoginSignupIconContainer(
            logo: AssetImage(MImageStrings.facebookLogo)),
        MHelperFunctions.giveWidth(16.w),
        const MLoginSignupIconContainer(
            logo: AssetImage(MImageStrings.fingerprintlogo)),
      ],
    );
  }
}
