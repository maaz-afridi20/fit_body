import 'package:fit_body/Utils/constants/exports.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  final mPageController = PageController();

  //! variables
  final pageController = PageController();
  final RxInt currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.off(() => const LoginScreen());
    } else {
      int pagee = currentPageIndex.value + 1;
      pageController.jumpToPage(pagee);
    }
  }

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
