import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

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

  static void showAppExitDialogue(BuildContext context) {
    showAdaptiveDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: const Text('Do you want to close the app'),
              actions: [
                CupertinoDialogAction(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: const Text('Confirm'),
                ),
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
              ],
            ));
  }

  static void navigateTo(BuildContext context, screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }

  static void navigateBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  static void navigateOff(BuildContext context, Widget nextPage) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => nextPage,
      ),
    );
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

  static Future<void> launchUlr(String url) async {
    var receivdeUrl = Uri.parse(url);
    if (!await launchUrl(receivdeUrl,
        mode: LaunchMode.externalNonBrowserApplication)) {
      throw "Coudn't Launch Url";
    }
  }
}
