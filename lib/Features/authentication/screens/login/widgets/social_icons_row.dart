import 'package:fit_body/Utils/constants/exports.dart';

class MSocialIconRow extends StatelessWidget {
  const MSocialIconRow(
      {super.key,
      this.fingerprintOnPress,
      this.facebookOnPress,
      this.gmailOnPress});

  final Function()? fingerprintOnPress;
  final Function()? facebookOnPress;
  final Function()? gmailOnPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => gmailOnPress,
          child: const MLoginSignupIconContainer(
              logo: AssetImage(MImageStrings.gmailLogo)),
        ),
        MHelperFunctions.giveWidth(16.w),
        GestureDetector(
          onTap: () => facebookOnPress,
          child: const MLoginSignupIconContainer(
              logo: AssetImage(MImageStrings.facebookLogo)),
        ),
        MHelperFunctions.giveWidth(16.w),
        GestureDetector(
          onTap: () => fingerprintOnPress,
          child: const MLoginSignupIconContainer(
              logo: AssetImage(MImageStrings.fingerprintlogo)),
        ),
      ],
    );
  }
}
