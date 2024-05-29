import 'package:fit_body/Utils/constants/exports.dart';

class NotificationShowingTabbarController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      currentIndex.value = tabController.index;
      update();
    });
  }

  Color getBackgroundColor(int index) {
    return currentIndex.value == index ? MColors.yellowishColor : Colors.white;
  }

  Color getTitleTextColor(int index) {
    return currentIndex.value == index
        ? MColors.balckColor
        : MColors.darkPurpleColor;
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
