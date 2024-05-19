import 'package:fit_body/Utils/constants/exports.dart';

class ChipController extends GetxController {
  var selectedChip = 'All'.obs;

  void selectChip(String chipTitle) {
    if (selectedChip.value == chipTitle) {
      selectedChip.value = ''; // Deselect if the same chip is clicked again
    } else {
      selectedChip.value = chipTitle;
    }
  }

  void resetChip() {
    selectedChip.value = 'All';
  }
}
