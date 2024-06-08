import 'package:fit_body/Utils/constants/exports.dart';

class ProgressTrackingScreen extends StatelessWidget {
  const ProgressTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final progressScreenTabController = Get.put(ProgressScreenTabcontroller());
    final workoutRowwController = WorkoutRowController.instance;
    return Scaffold(
        appBar: MAppbar(
            appbarTitle: 'Progress Screen',
            showActionWidget: true,
            showBottomWidget: false,
            showLeading: GestureDetector(
                onTap: () {
                  workoutRowwController.updateIndex(0);
                  Get.back();
                },
                child: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: MColors.yellowishColor))),
        body: SafeArea(
            child: Column(children: [
          //
          //! personal details row above date picker
          const PersonalDetailsInProgressScreen(),

          //
          //!
          37.heightBox,

          Obx(() => TabBar(
                  controller: progressScreenTabController.tabController,
                  dividerColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory,
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(
                        child: MCircularContainer(
                            titleText: 'Workout Log',
                            backgroundColor: progressScreenTabController
                                .getBackgroundColor(0),
                            textcolor:
                                progressScreenTabController.getTitleColor(0),
                            heightOfContainer: 30.h)),
                    Tab(
                        child: MCircularContainer(
                            titleText: 'Charts',
                            backgroundColor: progressScreenTabController
                                .getBackgroundColor(1),
                            textcolor:
                                progressScreenTabController.getTitleColor(1),
                            heightOfContainer: 30.h))
                  ])),

          Expanded(
              child: TabBarView(
                  controller: progressScreenTabController.tabController,
                  children: const [ProgressWorkoutLog(), ProgressTracking()]))
        ])));
  }
}
