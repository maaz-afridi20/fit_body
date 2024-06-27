import 'package:fit_body/Utils/constants/exports.dart';

class AuthenticationRepo extends GetxController {
  @override
  void onInit() {
    toGo();
    super.onInit();
  }

  Future<bool> checkFirstTime() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('isFirstTime') ?? false;
  }

  void screenRedirect() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final fingerPrintSaved = pref.getBool('saveFingerPrint') ?? false;
    final isFirstTime = await checkFirstTime();

    if (isFirstTime) {
      if (fingerPrintSaved) {
        MHelperFunctions.navigateOff(Get.context!, const HomeNavBar());
      } else {
        MHelperFunctions.navigateOff(Get.context!, const LoginScreen());
      }
    } else {
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setBool('isFirstTime', true);
      MHelperFunctions.navigateOff(Get.context!, const OnBoardingScreen());
    }
  }

  void toGo() {
    Future.delayed(const Duration(seconds: 3), () => screenRedirect());
  }
}
