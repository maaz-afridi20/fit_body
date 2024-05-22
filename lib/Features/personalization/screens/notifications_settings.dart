import 'package:fit_body/Utils/constants/exports.dart';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.balckColor,
      appBar: const MAppbar(appbarTitle: "Notification Settings"),
      body: Column(
        children: <Widget>[
          40.heightBox,
          const NotificationListTileWidget(tileText: 'General Notification'),
          const NotificationListTileWidget(tileText: 'Sound'),
          const NotificationListTileWidget(tileText: "Don't Disturb Mode"),
          const NotificationListTileWidget(tileText: 'Vibrate'),
          const NotificationListTileWidget(tileText: 'Lock Screen'),
          const NotificationListTileWidget(tileText: 'Reminders'),
          "notification".text.size(40).make()
        ],
      ).px(35.w),
    );
  }
}
