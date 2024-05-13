import 'package:fit_body/Utils/constants/exports.dart';

class HeightSelectController extends GetxController {
  static HeightSelectController get instance => Get.find();
  final RxInt selectedHeight = 0.obs;

  void updateSelectedHeight(index) {
    selectedHeight.value = index;
  }
}
