import 'package:fit_body/Utils/constants/exports.dart';

class HelpChipController extends GetxController {
  // final RxString selectedChip = ''.obs;
  // void selectChip(String chipTitle) {
  //   selectedChip.value = chipTitle;
  // }
  static HelpChipController get instance => Get.find();
  final selectedChips = <String>{}.obs;

  void toggleSelectedChips(String chipTitle) {
    if (selectedChips.contains(chipTitle)) {
      selectedChips.remove(chipTitle);
    } else {
      selectedChips.add(chipTitle);
    }
  }

  //
  //!
  final RxBool isExpanded = false.obs;

  void expandedToggle() {
    isExpanded.toggle();
  }

  //
  //!
  final RxBool isListileTextVisible = false.obs;

  void listileTextToggle() {
    isListileTextVisible.toggle();
  }
}
