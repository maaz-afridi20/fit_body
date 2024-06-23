import 'package:fit_body/Utils/constants/exports.dart';

class WorkoutVideosArticleAndTipsMainPage extends StatelessWidget {
  const WorkoutVideosArticleAndTipsMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NotificationShowingTabbarController());
    return Scaffold(
        appBar: const MAppbar(showActionWidget: true, appbarTitle: "Resources"),
        body: Column(children: [
          Obx(() => TabBar(
                  controller: controller.tabController,
                  dividerColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory,
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(
                        child: MCircularContainer(
                            titleText: "Workout Videos",
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 8),
                            backgroundColor: controller.getBackgroundColor(0),
                            textcolor: controller.getTitleTextColor(0),
                            heightOfContainer: 32.h)),
                    Tab(
                        child: MCircularContainer(
                            titleText: "Articles And Tips",
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 8),
                            backgroundColor: controller.getBackgroundColor(1),
                            textcolor: controller.getTitleTextColor(1),
                            heightOfContainer: 32.h)),
                  ])),
          TabBarView(
                  controller: controller.tabController,
                  children: const [WorkoutVideos(), ArticleAndTips()])
              .wrapWithExpanded()
        ]));
  }
}
