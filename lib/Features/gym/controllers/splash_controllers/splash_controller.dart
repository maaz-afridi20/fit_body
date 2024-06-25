import 'dart:async';

import 'package:fit_body/Utils/constants/exports.dart';

class SplashController extends GetxController {
  //
  @override
  void onInit() {
    toGo();
    super.onInit();
  }

  Future<bool> checkFirstTime() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('firstTime') ?? false;
  }

  void screenRedirect() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final bool isFirstTime = await checkFirstTime();
    if (isFirstTime) {
      Get.offAll(() => const LoginScreen());
    } else {
      pref.setBool('firstTime', true);
      Get.offAll(() => const OnBoardingScreen());
    }
  }

  void toGo() {
    Future.delayed(const Duration(seconds: 5), () => screenRedirect());
  }
}


  // toGo() {
  //   Future.delayed(
  //       const Duration(seconds: 5),
  //       () => Get.off(() => const OnBoardingScreen(),
  //           transition: Transition.rightToLeft));
  // }



    // Future<void> firstTime() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   pref.setBool('firstTime', isFirstTime.value);
  // }