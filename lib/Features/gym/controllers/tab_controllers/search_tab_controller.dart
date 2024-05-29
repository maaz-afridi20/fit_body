import 'package:fit_body/Utils/constants/exports.dart';

class SearchTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  final RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      currentIndex.value = tabController.index;
      update();
    });
    super.onInit();
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
