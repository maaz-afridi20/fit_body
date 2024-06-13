import 'package:fit_body/Features/gym/screens/workout_row_screens/workout/advance/start_advance_screen.dart';
import 'package:fit_body/Features/gym/screens/workout_row_screens/workout/begginer/start_beginner_screen.dart';
import 'package:fit_body/Features/gym/screens/workout_row_screens/workout/intermediate/start_intermediate_screen.dart';
import 'package:fit_body/Utils/constants/exports.dart';

class MainWorkoutScreen extends StatelessWidget {
  const MainWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final workoutRowwController = WorkoutRowController.instance;
    final tabController = Get.put(SearchTabController());
    return SafeArea(
        child: Scaffold(
      appBar: MAppbar(
          appbarTitle: 'WorkOut',
          centerTitle: false,
          showActionWidget: true,
          showLeadingWidget: true,
          leadingWidget: GestureDetector(
              onTap: () {
                workoutRowwController.updateIndex(0);
                Get.back();
              },
              child: const Icon(Icons.arrow_back_ios_new_rounded,
                  color: MColors.yellowishColor))),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(() => TabBar(
                  controller: tabController.tabController,
                  dividerColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory,
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(
                        height: 36,
                        child: MCircularContainer(
                            titleText: "Beginner",
                            backgroundColor:
                                tabController.getBackgroundColor(0),
                            textcolor: tabController.getTitleTextColor(0),
                            heightOfContainer: 36)),
                    Tab(
                        height: 36,
                        child: MCircularContainer(
                            titleText: " Intermediate",
                            backgroundColor:
                                tabController.getBackgroundColor(1),
                            textcolor: tabController.getTitleTextColor(1),
                            heightOfContainer: 36)),
                    Tab(
                      height: 36,
                      child: MCircularContainer(
                          titleText: "Advance",
                          backgroundColor: tabController.getBackgroundColor(2),
                          textcolor: tabController.getTitleTextColor(2),
                          heightOfContainer: 36),
                    )
                  ])),
          24.heightBox,
          Expanded(
            child: TabBarView(
                controller: tabController.tabController,
                children: const [
                  StartBeginnerScreen(),
                  StartIntermediateScreen(),
                  StartAdvanceScreen()
                  // IntermediateWorkoutScreen(),
                  // AdvanceWorkoutScreen()
                ]),
          ),
        ],
      ),
    ));
  }
}




 // Row(children: [
          //   Expanded(
          //       child: MCircularContainer(
          //           onPress: () =>
          //               Get.to(() => const BegginerWorkoutScreen()),
          //           contentPadding:
          //               const EdgeInsets.symmetric(horizontal: 13),
          //           titleText: 'Beginner',
          //           heightOfContainer: 36.h)),
          //   4.widthBox,
          //   Expanded(
          //       child: MCircularContainer(
          //           onPress: () =>
          //               Get.to(() => const IntermediateWorkoutScreen()),
          //           contentPadding:
          //               const EdgeInsets.symmetric(horizontal: 13),
          //           titleText: 'Intermedate',
          //           heightOfContainer: 36.h)),
          //   4.widthBox,
          //   Expanded(
          //       child: MCircularContainer(
          //           onPress: () => Get.to(() => const AdvanceWorkoutScreen()),
          //           contentPadding:
          //               const EdgeInsets.symmetric(horizontal: 13),
          //           titleText: 'Advance',
          //           heightOfContainer: 36.h))
          // ]).px(35.w),
          //
          //
          // //! training of the day container...
          // 24.heightBox,