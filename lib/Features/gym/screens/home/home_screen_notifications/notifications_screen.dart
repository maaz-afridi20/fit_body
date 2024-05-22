import '../../../../../Utils/constants/exports.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MAppbar(
      appbarTitle: "Notifications",
      titleColor: MColors.darkPurpleColor,
      action: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.search, color: MColors.darkPurpleColor),
            MHelperFunctions.giveWidth(20.w),
            const Icon(Icons.notifications, color: MColors.darkPurpleColor),
            MHelperFunctions.giveWidth(20.w),
            const Icon(Icons.person_rounded, color: MColors.darkPurpleColor),
          ],
        )
      ],
    ));
  }
}
