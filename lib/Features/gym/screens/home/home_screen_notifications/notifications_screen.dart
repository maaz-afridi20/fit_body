import '../../../../../Utils/constants/exports.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MAppbar(
                appbarTitle: "Notifications",
                titleColor: MColors.darkPurpleColor,
                action: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.search, color: MColors.darkPurpleColor),
                      MHelperFunctions.giveWidth(20.w),
                      const Icon(Icons.notifications,
                          color: MColors.darkPurpleColor),
                      MHelperFunctions.giveWidth(20.w),
                      const Icon(Icons.person_rounded,
                          color: MColors.darkPurpleColor),
                    ],
                  )
                ]),
            16.heightBox,
            Row(
              children: [
                Expanded(
                    child: MCircularContainer(
                  titleText: "Reminders",
                  heightOfContainer: 30,
                  backgroundColor: MColors.yellowishColor,
                  textFontsize: 17.sp,
                )),
                21.widthBox,
                Expanded(
                    child: MCircularContainer(
                        titleText: "System",
                        heightOfContainer: 30,
                        textcolor: MColors.purpleColor,
                        textFontsize: 17.sp)),
              ],
            ),
            20.heightBox,
            Text('Today',
                style: MTextStyles.mNormalStyle(
                    fontSize: 12.sp, color: MColors.yellowishColor)),
            6.heightBox,
            const NotificationListile(
                notificationTitle: 'New Workout Is Available',
                notificationSubTitle: 'June 10 - 10:00 AM'),
            16.heightBox,
            const NotificationListile(
                notificationTitle: "Don't forget to drink water",
                leadingContainerColor: MColors.yellowishColor,
                leadingContainerIcon: Icons.light_rounded,
                iconColor: MColors.balckColor,
                notificationSubTitle: 'June 11 - 12:00 PM'),
            20.heightBox,
            Text('Yesterday',
                style: MTextStyles.mNormalStyle(
                    fontSize: 12.sp, color: MColors.yellowishColor)),
          ],
        ).px(35.w),
      ),
    );
  }
}
