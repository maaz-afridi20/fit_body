import 'package:fit_body/Utils/constants/exports.dart';
// ignore: depend_on_referenced_packages
import 'package:uuid/uuid.dart';

class NotificationListTileWidget extends StatelessWidget {
  const NotificationListTileWidget({super.key, required this.tileText});

  final String tileText;

  @override
  Widget build(BuildContext context) {
    var uuid = const Uuid();
    String uniqueId = uuid.v4();
    final controller =
        Get.put(NotificationPageSwitchBtnController(), tag: uniqueId);
    return Obx(() => ListTile(
          title: Text(tileText,
              style: MTextStyles.mNormalStyle(fontWeight: FontWeight.w600)),
          trailing: Switch.adaptive(
            value: controller.isOn.value,
            inactiveTrackColor: MColors.purpleColor,
            inactiveThumbColor: Colors.white,
            activeTrackColor: MColors.switchBtnColor,
            onChanged: (value) {
              controller.isOn.value = value;
            },
          ),
        ));
  }
}
