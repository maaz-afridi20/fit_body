import 'package:fit_body/Utils/constants/exports.dart';

class HomeScreenAllSearch extends StatelessWidget {
  const HomeScreenAllSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SearchTabController());
    return Scaffold(
      appBar: MAppbar(
        appbarTitle: "Search",
        action: [
          const Icon(Icons.notifications, color: MColors.darkPurpleColor),
          20.widthBox,
          const Icon(Icons.person_rounded, color: MColors.darkPurpleColor)
              .pOnly(right: 35.w)
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            MTextField(
                hintText: 'Search', broderRadius: BorderRadius.circular(30.r)),
            15.heightBox,
            Obx(() => TabBar(
                    controller: controller.tabController,
                    dividerColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    indicatorColor: Colors.transparent,
                    tabs: [
                      Tab(
                          child: MCircularContainer(
                              titleText: 'All',
                              heightOfContainer: 30,
                              widthOfContainer: MHelperFunctions.screenWidth(),
                              textFontsize: 17.sp,
                              backgroundColor: controller.getBackgroundColor(0),
                              textcolor: controller.getTitleTextColor(0))),
                      Tab(
                          child: MCircularContainer(
                              titleText: 'Workout',
                              widthOfContainer: MHelperFunctions.screenWidth(),
                              heightOfContainer: 30,
                              textFontsize: 17.sp,
                              backgroundColor: controller.getBackgroundColor(1),
                              textcolor: controller.getTitleTextColor(1))),
                      Tab(
                          child: MCircularContainer(
                              widthOfContainer: MHelperFunctions.screenWidth(),
                              titleText: 'Nutrition',
                              heightOfContainer: 30,
                              textFontsize: 17.sp,
                              backgroundColor: controller.getBackgroundColor(2),
                              textcolor: controller.getTitleTextColor(2)))
                    ])),
            Expanded(
              child: TabBarView(
                  controller: controller.tabController,
                  children: const [
                    AllHomeScreenSearches(),
                    HomeSearchScreenWorkout(),
                    HomeScreenSearchNutruition()
                  ]),
            ),
          ],
        ).px(35.w),
      ),
    );
  }
}
