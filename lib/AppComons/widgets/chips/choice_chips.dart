import 'package:fit_body/Utils/constants/exports.dart';

class ChoiceChipsWidget extends StatelessWidget {
  const ChoiceChipsWidget(
      {super.key,
      required this.chipTitle,
      this.backgroundColor,
      this.titleColor});
  final String chipTitle;
  final Color? backgroundColor;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: Chip(
        padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 5),
        backgroundColor: backgroundColor ?? Colors.white,
        label: Text(chipTitle,
            style: MTextStyles.mNormalStyle(
                color: titleColor ?? MColors.balckColor, fontSize: 12.sp)),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(23.r)),
      ),
    );
  }
}
