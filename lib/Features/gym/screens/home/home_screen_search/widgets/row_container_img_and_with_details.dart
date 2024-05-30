import 'package:fit_body/Utils/constants/exports.dart';

class RowContainerWithImageAndDetails extends StatelessWidget {
  const RowContainerWithImageAndDetails(
      {super.key,
      required this.imageString,
      required this.title,
      required this.details,
      this.showPositonedIcon,
      this.backgroundColor});

  final String imageString;
  final String title;
  final List<Map<String, dynamic>> details;
  final bool? showPositonedIcon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return RowContainerWithAndImg(imageString: imageString, childrensInColumn: [
      Text(title,
          style: MTextStyles.mNormalStyle(
              color: MColors.balckColor, fontSize: 18.sp),
          textAlign: TextAlign.center),
      MHelperFunctions.giveHeight(10.h),
      Wrap(
          children: details.map((detail) {
        return Row(children: [
          Icon(detail['icon'], size: 11.sp),
          5.widthBox,
          Text(detail['text']!,
              style: MTextStyles.mNormalStyle(
                  fontSize: 12.sp, color: MColors.balckColor),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis)
        ]);
      }).toList())
    ]);
  }
}
