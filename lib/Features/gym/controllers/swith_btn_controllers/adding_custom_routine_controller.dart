import 'package:fit_body/Utils/constants/exports.dart';

class AddingCustomRoutineController extends GetxController {
  var addedItems = [].obs;

  void toggleItems(int index) {
    if (addedItems.contains(index)) {
      addedItems.remove(index);
    } else {
      addedItems.add(index);
    }
  }

  bool isAdded(int index) {
    return addedItems.contains(index);
  }
}
