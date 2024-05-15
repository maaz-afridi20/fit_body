import 'package:fit_body/Utils/constants/exports.dart';

class SmallLine extends StatelessWidget {
  const SmallLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 1.w,
      decoration: BoxDecoration(
          color: MColors.purpleColor, borderRadius: BorderRadius.circular(8.r)),
    );
  }
}
