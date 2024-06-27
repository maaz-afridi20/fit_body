import '../../../../Utils/constants/exports.dart';

class LocalAuthRepo extends GetxController {
  static LocalAuthRepo get instance => Get.find();

  final localAuth = LocalAuthentication();
  final hasFingerPrint = false.obs;
  final hasFaceRecognition = false.obs;
  final isUserAuthenticated = false.obs;

  @override
  void onInit() {
    super.onInit();
    getAllBiometrics();
  }

  Future<void> getAllBiometrics() async {
    try {
      final hasLocalAuthentication = await localAuth.canCheckBiometrics;

      if (hasLocalAuthentication) {
        List<BiometricType> allMetrics =
            await localAuth.getAvailableBiometrics();
        hasFingerPrint.value = allMetrics.contains(BiometricType.fingerprint);
        hasFaceRecognition.value = allMetrics.contains(BiometricType.face);
      } else {
        MHelperFunctions.navigateBack(Get.context!);
        MHelperFunctions.showSnackBar(
            "Your device does not support fingerprint/face recognition");
      }
    } catch (e) {
      MHelperFunctions.showSnackBar("Some error occured");
    }
  }

  void authenticateUser() async {
    try {
      isUserAuthenticated.value = await localAuth.authenticate(
          localizedReason: "Confirm your finger print to add yourself.",
          options: const AuthenticationOptions(
              biometricOnly: true, stickyAuth: true, useErrorDialogs: true));

      if (isUserAuthenticated.value) {
        saveUserFingerprint();
      } else {
        MHelperFunctions.showSnackBar("Authentication Cancelled");
      }
    } catch (e) {
      MHelperFunctions.showSnackBar("Some error occured");
    }
  }

  static saveUserFingerprint() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool('saveFingerPrint', true);
    MHelperFunctions.navigateTo(Get.context!, const HomeNavBar());
  }
}
