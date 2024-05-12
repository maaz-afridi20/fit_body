import 'dart:async';

import 'package:fit_body/Utils/constants/exports.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    toGo();
    super.onInit();
  }

  toGo() {
    Future.delayed(
        const Duration(seconds: 5),
        () => Get.off(() => const OnBoardingScreen(),
            transition: Transition.rightToLeft));
  }
}
