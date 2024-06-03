import 'package:fit_body/Features/gym/screens/progress/progress_tracking.dart';
import 'package:fit_body/Utils/constants/exports.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProgressScreenTabcontroller());
    return Scaffold(
        appBar: MAppbar(
          appbarTitle: 'Progress Screen',
          action: [
            Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.search, color: MColors.darkPurpleColor),
                  MHelperFunctions.giveWidth(20.w),
                  const Icon(Icons.notifications,
                      color: MColors.darkPurpleColor),
                  MHelperFunctions.giveWidth(20.w),
                  const Icon(Icons.person_rounded,
                      color: MColors.darkPurpleColor)
                ]).pOnly(right: 35.w)
          ],
        ),
        body: SafeArea(
            child: Column(children: [
          //
          //! personal details row above date picker
          const PersonalDetailsInProgressScreen(),

          //
          //!
          37.heightBox,

          Obx(() => TabBar(
                  controller: controller.tabController,
                  dividerColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory,
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(
                        child: MCircularContainer(
                            titleText: 'Workout Log',
                            backgroundColor: controller.getBackgroundColor(0),
                            textcolor: controller.getTitleColor(0),
                            heightOfContainer: 30.h)),
                    Tab(
                        child: MCircularContainer(
                            titleText: 'Charts',
                            backgroundColor: controller.getBackgroundColor(1),
                            textcolor: controller.getTitleColor(1),
                            heightOfContainer: 30.h))
                  ])),

          Expanded(
              child: TabBarView(
                  controller: controller.tabController,
                  children: const [ProgressWorkoutLog(), ProgressTracking()]))
        ])));
  }
}
