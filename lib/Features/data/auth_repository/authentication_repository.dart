import 'package:fit_body/Utils/constants/exports.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // RxBool isFirstRun = true.obs;
}





  // Future<void> setFirstTime() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.setBool('hasSeenOnboarding', true);
  // }

  // Future<bool> hasSeenOnboarding() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   return pref.getBool("hasSeenOnboarding") ?? false;
  // }

  // void screenRedirect() async {
  //   bool hasSeenOnBoardingCheck = await hasSeenOnboarding();
  //   if (hasSeenOnBoardingCheck) {
  //     // Get.offAll(() => const LoginScreen());
  //     MHelperFunctions.navigateOff(Get.context!, const LoginScreen());
  //   } else {
  //     setFirstTime();
  //     // Get.offAll(() => const OnBoardingScreen());
  //     MHelperFunctions.navigateOff(Get.context!, const OnBoardingScreen());
  //   }
  // }