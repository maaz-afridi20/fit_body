import 'package:fit_body/Utils/constants/exports.dart';

class MTextStyles {
  static TextStyle mHeadingStyle({Color? color, double? fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 20.sp,
        fontWeight: FontWeight.bold,
        color: color ?? Colors.white);
  }

  static TextStyle mNormalStyle(
      {double? fontSize, Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize ?? 14.sp,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.white);
  }
}
