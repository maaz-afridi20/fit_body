import 'package:fit_body/Utils/constants/exports.dart';

class MealIdeasTabbarPage extends StatelessWidget {
  const MealIdeasTabbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SearchTabController());
    return Scaffold(
        appBar:
            const MAppbar(showActionWidget: true, appbarTitle: "Meal Ideas"),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(() => TabBar(
                      controller: controller.tabController,
                      dividerColor: Colors.transparent,
                      splashFactory: NoSplash.splashFactory,
                      indicatorColor: Colors.transparent,
                      tabs: [
                        Tab(
                            child: MCircularContainer(
                          titleText: "BreakFast",
                          heightOfContainer: 35,
                          backgroundColor: controller.getBackgroundColor(0),
                          textcolor: controller.getTitleTextColor(0),
                        )),
                        Tab(
                            child: MCircularContainer(
                                titleText: "Lunch",
                                heightOfContainer: 35,
                                backgroundColor:
                                    controller.getBackgroundColor(1),
                                textcolor: controller.getTitleTextColor(1))),
                        Tab(
                            child: MCircularContainer(
                                titleText: "Dinner",
                                heightOfContainer: 35,
                                backgroundColor:
                                    controller.getBackgroundColor(2),
                                textcolor: controller.getTitleTextColor(2)))
                      ])),
              TabBarView(controller: controller.tabController, children: const [
                BreakfastMealIdeasA(),
                LunchMealIdeasA(),
                DinnerMealIdeasA()
              ]).wrapWithExpanded()
            ]));
  }
}
