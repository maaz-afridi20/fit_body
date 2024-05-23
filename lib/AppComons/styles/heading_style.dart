import 'package:fit_body/Utils/constants/exports.dart';

class MTextStyles {
  static TextStyle mHeadingStyle(
      {Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      String? fontFamily}) {
    return TextStyle(
        fontSize: fontSize ?? 20.sp,
        fontWeight: fontWeight ?? FontWeight.bold,
        fontFamily: fontFamily ?? 'Poppins',
        color: color ?? Colors.white);
  }

  static TextStyle mNormalStyle(
      {double? fontSize,
      Color? color,
      FontWeight? fontWeight,
      String? fontFamily}) {
    return TextStyle(
        fontSize: fontSize ?? 14.sp,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: fontFamily ?? 'Poppins',
        color: color ?? Colors.white);
  }
}
