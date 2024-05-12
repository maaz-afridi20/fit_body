import 'package:fit_body/Utils/constants/exports.dart';

class MLoginSignupIconContainer extends StatelessWidget {
  const MLoginSignupIconContainer({super.key, required this.logo});

  final ImageProvider logo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      width: 34.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13.r),
          image: DecorationImage(image: logo)),
    );
  }
}
