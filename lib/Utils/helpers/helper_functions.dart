import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter/services.dart';

class MHelperFunctions {
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  onBackButtonPressed(BuildContext context) async {
    bool? exitApp = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('confirm'),
          content: const Text('really'),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('okk')),
            TextButton(
                onPressed: () => SystemNavigator.pop(),
                child: const Text('yess')),
          ],
        );
      },
    );
    return exitApp ?? false;
  }

  static void showAppExitingDialogue(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Do you want to close the app'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              child: const Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  static void navigate(Widget screen) {
    Get.to(() => screen);
  }

  static void navigateOff(screen) {
    Get.off(() => screen);
  }

  static bool isDarkMode() {
    return Theme.of(Get.context!).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static SizedBox giveHeight(double height) => SizedBox(height: height);

  static SizedBox giveWidth(double width) => SizedBox(width: width);
}
