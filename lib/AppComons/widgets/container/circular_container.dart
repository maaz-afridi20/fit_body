import 'package:fit_body/Utils/constants/exports.dart';

class MCircularContainer extends StatelessWidget {
  const MCircularContainer(
      {super.key,
      this.backgroundColor,
      this.textFontsize,
      this.textcolor,
      this.radiusOfContaier,
      this.textFontWeight,
      this.heightOfContainer,
      this.widthOfContainer,
      this.contentPadding,
      this.onPress,
      required this.titleText});

  final Color? textcolor;
  final String titleText;
  final Color? backgroundColor;
  final double? textFontsize;
  final FontWeight? textFontWeight;
  final double? heightOfContainer;
  final double? widthOfContainer;
  final double? radiusOfContaier;
  final Function()? onPress;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: heightOfContainer ?? 60.h,
        width: widthOfContainer ?? double.infinity,
        decoration: BoxDecoration(
            color: backgroundColor ?? Colors.white,
            borderRadius: BorderRadius.circular(radiusOfContaier ?? 30)),
        child: Center(
            child: Padding(
          padding: contentPadding ?? EdgeInsets.zero,
          child: Text(titleText,
              style: MTextStyles.mHeadingStyle(
                  fontWeight: textFontWeight ?? FontWeight.normal,
                  fontSize: textFontsize,
                  color: textcolor ?? MColors.balckColor)),
        )),
      ),
    );
  }
}





// Widget buildCircularContainer(String title, int index){
//   final controller = Get.put(PhysicalActivityController());
//   return  GestureDetector(
//       onTap: controller.updateSelectedIndex(index),
//       child: Container(
//         height: heightOfContainer ?? 60.h,
//         width: widthOfContainer ?? double.infinity,
//         decoration: BoxDecoration(
//             color: backgroundColor ?? Colors.white,
//             borderRadius: BorderRadius.circular(radiusOfContaier ?? 30)),
//         child: Center(
//             child: Text(titleText,
//                 style: MTextStyles.mHeadingStyle(
//                     fontWeight: textFontWeight ?? FontWeight.normal,
//                     fontSize: textFontsize,
//                     color: textcolor ?? MColors.balckColor))),
//       ),
//     );
// }

