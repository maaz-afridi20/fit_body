import 'package:fit_body/Utils/constants/exports.dart';
import 'package:fit_body/Utils/themes/widget_themes/appbar_theme.dart';
import 'package:fit_body/Utils/themes/widget_themes/bottom_sheet_theme.dart';

class MAppTheme {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: MColors.homeContainerBlackClr,
      useMaterial3: true,
      fontFamily: 'Poppins',
      disabledColor: Colors.grey.withOpacity(.5),
      brightness: Brightness.light,
      appBarTheme: MAppbarTheme.lightAppbarTheme,
      bottomSheetTheme: MBottomSheetTheme.lightBottomSheetTheme);

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: MColors.homeContainerBlackClr,
      useMaterial3: true,
      fontFamily: 'Poppins',
      disabledColor: Colors.grey.withOpacity(.5),
      brightness: Brightness.dark,
      appBarTheme: MAppbarTheme.darkAppbarTheme,
      bottomSheetTheme: MBottomSheetTheme.darkBottomSheetTheme);
}
