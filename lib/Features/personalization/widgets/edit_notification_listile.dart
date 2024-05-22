import 'package:fit_body/Features/gym/controllers/swith_btn_controllers/notification_page_switch_btn_controller.dart';
import 'package:fit_body/Utils/constants/exports.dart';

class NotificationListTileWidget extends StatelessWidget {
  const NotificationListTileWidget({super.key, required this.tileText});

  final String tileText;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NotificationPageSwitchBtnController(),
        tag: UniqueKey().toString());
    return Obx(() => ListTile(
          title: Text(tileText,
              style: MTextStyles.mNormalStyle(fontWeight: FontWeight.w600)),
          trailing: Transform.scale(
            scaleX: 1.1,
            scaleY: .6,
            child: Switch(
              value: controller.isOn.value,
              inactiveTrackColor: MColors.purpleColor,
              inactiveThumbColor: Colors.white,
              activeTrackColor: MColors.switchBtnColor,
              onChanged: (value) {
                controller.isOn.value = value;
              },
            ),
          ),
        ));
  }
}
