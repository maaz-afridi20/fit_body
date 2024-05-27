import '../../../../../Utils/constants/exports.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NotificationChipController());
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
            Obx(() {
              return Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                          onTap: () =>
                              controller.toggleNotificationChip('Reminders'),
                          child: MCircularContainer(
                              titleText: "Reminders",
                              heightOfContainer: 30,
                              textcolor: controller.selectedNotificationChip
                                      .contains("Reminders")
                                  ? MColors.balckColor
                                  : MColors.darkPurpleColor,
                              backgroundColor: controller
                                      .selectedNotificationChip
                                      .contains("Reminders")
                                  ? MColors.yellowishColor
                                  : Colors.white,
                              textFontsize: 17.sp))),
                  21.widthBox,
                  Expanded(
                      child: GestureDetector(
                          onTap: () =>
                              controller.toggleNotificationChip('System'),
                          child: MCircularContainer(
                              titleText: "System",
                              heightOfContainer: 30,
                              textcolor: controller.selectedNotificationChip
                                      .contains("System")
                                  ? MColors.balckColor
                                  : MColors.darkPurpleColor,
                              backgroundColor: controller
                                      .selectedNotificationChip
                                      .contains("System")
                                  ? MColors.yellowishColor
                                  : Colors.white,
                              textFontsize: 17.sp)))
                ],
              );
            }),
            20.heightBox,
            Text('Today',
                style: MTextStyles.mNormalStyle(
                    fontSize: 12.sp, color: MColors.yellowishColor)),
            6.heightBox,
            const NotificationShowing(
                notificationTitle: 'New Workout Is Available',
                notificationSubTitle: 'June 10 - 10:00 AM'),
            16.heightBox,
            const NotificationShowing(
                notificationTitle: "Don't forget to drink water",
                leadingContainerColor: MColors.yellowishColor,
                leadingContainerIcon: Icons.light_rounded,
                iconColor: MColors.balckColor,
                notificationSubTitle: 'June 11 - 12:00 PM'),
            20.heightBox,
            Text('Yesterday',
                style: MTextStyles.mNormalStyle(
                    fontSize: 12.sp, color: MColors.yellowishColor)),
            6.heightBox,
            const NotificationShowing(
                notificationSubTitle: "June 9 - 10:00 AM",
                notificationTitle: "Upper Body Workout Completed"),
            16.heightBox,
            const NotificationShowing(
                notificationSubTitle: "June 8 - 4:00 PM",
                notificationTitle: "Remember Your Exercise Session",
                leadingContainerIcon: Icons.edit_document),
            16.heightBox,
            const NotificationShowing(
                notificationSubTitle: "June 2 - 10:00 AM",
                notificationTitle: "New Article And Tips Posted",
                leadingContainerIcon: Iconsax.document_1_copy),
            20.heightBox,
            Text('May 29 2020',
                style: MTextStyles.mNormalStyle(
                    fontSize: 12.sp, color: MColors.yellowishColor)),
            6.heightBox,
            const NotificationShowing(
                notificationTitle: "You started a new challenge",
                leadingContainerColor: MColors.yellowishColor,
                leadingContainerIcon: Icons.light_rounded,
                iconColor: MColors.balckColor,
                notificationSubTitle: 'June 11 - 12:00 PM'),
          ],
        ).px(35.w),
      ),
    );
  }
}
