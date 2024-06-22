import 'package:fit_body/Utils/constants/exports.dart';

class WorkoutRowCommunityScreen extends StatelessWidget {
  const WorkoutRowCommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final workoutRowwController = WorkoutRowController.instance;
    final tabController = Get.put(NotificationShowingTabbarController());
    return Scaffold(
      appBar: MAppbar(
          appbarTitle: 'Community',
          showActionWidget: false,
          showLeadingWidget: true,
          leadingWidget: GestureDetector(
              onTap: () {
                workoutRowwController.updateIndex(0);
                Get.back();
              },
              child: const Icon(Icons.arrow_back_ios_new_rounded,
                  color: MColors.yellowishColor))),
      body: Column(children: [
        Obx(() => TabBar(
                controller: tabController.tabController,
                dividerColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                      child: MCircularContainer(
                          titleText: "Discussion Forum",
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          heightOfContainer: 35,
                          backgroundColor: tabController.getBackgroundColor(0),
                          textcolor: tabController.getTitleTextColor(0))),
                  Tab(
                      child: MCircularContainer(
                          titleText: "Challenges",
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          heightOfContainer: 35,
                          backgroundColor: tabController.getBackgroundColor(1),
                          textcolor: tabController.getTitleTextColor(1)))
                ])),
        TabBarView(controller: tabController.tabController, children: [
          const DiscussionForumsA(),
          Container(height: 300, width: 423, color: Colors.green)
        ]).wrapWithExpanded(),
      ]),
    );
  }
}
