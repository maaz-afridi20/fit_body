import 'package:fit_body/Utils/constants/exports.dart';

class MBottomSheetTheme {
  static const BottomSheetThemeData lightBottomSheetTheme =
      BottomSheetThemeData(
          backgroundColor: MColors.darkPurpleColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(31),
                  topRight: Radius.circular(31))));
  static const BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
      backgroundColor: MColors.darkPurpleColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(31), topRight: Radius.circular(31))));
}
