import 'package:fit_body/Features/gym/screens/home/home_screen_notifications/reminders.dart';
import 'package:fit_body/Features/gym/screens/home/home_screen_notifications/system_notification.dart';

import '../../../../../Utils/constants/exports.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NotificationChipController());
    final tabsController = Get.put(NotificationShowingTabbarController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                          const Icon(Icons.search,
                              color: MColors.darkPurpleColor),
                          MHelperFunctions.giveWidth(20.w),
                          const Icon(Icons.notifications,
                              color: MColors.darkPurpleColor),
                          MHelperFunctions.giveWidth(20.w),
                          const Icon(Icons.person_rounded,
                              color: MColors.darkPurpleColor)
                        ])
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
              TabBar(
                  dividerColor: Colors.transparent,
                  indicatorColor: Colors.transparent,
                  controller: tabsController.tabController,
                  tabs: [
                    Expanded(
                        child: MCircularContainer(
                            backgroundColor: controller.selectedNotificationChip
                                    .contains('Reminders')
                                ? MColors.yellowishColor
                                : Colors.white,
                            heightOfContainer: 30,
                            titleText: 'Reminders')),
                    Expanded(
                        child: MCircularContainer(
                            backgroundColor: controller.selectedNotificationChip
                                    .contains('Reminders')
                                ? MColors.yellowishColor
                                : Colors.white,
                            heightOfContainer: 30,
                            titleText: 'System')),
                    Expanded(
                        child: MCircularContainer(
                            backgroundColor: controller.selectedNotificationChip
                                    .contains('Reminders')
                                ? MColors.yellowishColor
                                : Colors.white,
                            heightOfContainer: 30,
                            titleText: 'Reminders'))
                  ]),
              SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: TabBarView(
                    controller: tabsController.tabController,
                    children: const [
                      Reminders(),
                      SystemNotification(),
                      Reminders()
                    ]),
              )
            ],
          ).px(35.w),
        ),
      ),
    );
  }
}
