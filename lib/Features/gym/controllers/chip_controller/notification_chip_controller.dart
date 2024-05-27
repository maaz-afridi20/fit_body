import 'package:fit_body/Utils/constants/exports.dart';

class NotificationChipController extends GetxController {
  final selectedNotificationChip = <String>{}.obs;

  void toggleNotificationChip(String chipTitle) {
    if (selectedNotificationChip.contains(chipTitle)) {
      selectedNotificationChip.remove(chipTitle);
    } else {
      selectedNotificationChip.add(chipTitle);
    }
  }
}
