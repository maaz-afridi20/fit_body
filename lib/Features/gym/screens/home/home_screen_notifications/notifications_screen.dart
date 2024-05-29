import '../../../../../Utils/constants/exports.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsController = Get.put(NotificationShowingTabbarController());
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
                  const Icon(Icons.notifications,
                      color: MColors.darkPurpleColor),
                  MHelperFunctions.giveWidth(20.w),
                  const Icon(Icons.person_rounded,
                      color: MColors.darkPurpleColor)
                ]).px(35.w)
          ]),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => TabBar(
                    controller: tabsController.tabController,
                    dividerColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    indicatorColor: Colors.transparent,
                    tabs: [
                      Tab(
                          height: 30,
                          child: MCircularContainer(
                              backgroundColor:
                                  tabsController.getBackgroundColor(0),
                              textcolor: tabsController.getTitleTextColor(0),
                              titleText: 'Reminders',
                              textFontsize: 17.sp,
                              heightOfContainer: 30)),
                      Tab(
                          height: 30,
                          child: MCircularContainer(
                              backgroundColor:
                                  tabsController.getBackgroundColor(1),
                              titleText: 'System',
                              textFontsize: 17.sp,
                              textcolor: tabsController.getTitleTextColor(1),
                              heightOfContainer: 30))
                    ])),
            Expanded(
                child: TabBarView(
                    controller: tabsController.tabController,
                    children: const [Reminders(), SystemNotification()]))
          ],
        ).px(35.w),
      ),
    );
  }
}
