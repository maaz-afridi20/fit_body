import 'package:fit_body/Utils/constants/exports.dart';
import 'package:get/get.dart';

class PhysicalActivityController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}
