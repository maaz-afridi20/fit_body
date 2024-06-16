import 'package:fit_body/Utils/constants/exports.dart';
import 'package:fit_body/data/local_data_lists/advance_workout_tile_data.dart';

class AdvanceWorkoutScreen extends StatelessWidget {
  const AdvanceWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppbar(appbarTitle: 'Advance', showActionWidget: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResizableContainer(
                applyWidgetPadding:
                    EdgeInsets.symmetric(horizontal: 22.w, vertical: 35.h),
                widgets: const [
                  TrainingOfTheDayContainer(
                      img:
                          "https://cdn.muscleandstrength.com/sites/default/files/images/cable-tricep-extension.jpg",
                      trainingName: "",
                      topRightTitle: "Upper Body Fitness",
                      containerHeight: 160)
                ]),
            25.heightBox,
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Round1",
                  style: MTextStyles.mNormalStyle(
                      fontWeight: FontWeight.w700,
                      color: MColors.yellowishColor)),
              15.heightBox,
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: advanceTrainingTilesRound1.length,
                  itemBuilder: (context, index) {
                    final notificationn = advanceTrainingTilesRound1[index];
                    return NotificationShowing(
                      notificationSubTitle: notificationn.notificationSubTitle,
                      notificationTitle: notificationn.notificationTitle,
                      leadingContainerIcon: notificationn.leadingContainerIcon,
                      leadingContainerColor:
                          notificationn.leadingContainerColor,
                      actionText: notificationn.actionText,
                      onPlayIconTapped: () => Get.to(() =>
                          const VideoWithExerciseDetailsContainer(
                              videoUrl:
                                  "https://videos.pexels.com/video-files/6540187/6540187-sd_540_960_24fps.mp4",
                              appbarTitle: "Advance",
                              exerciseInfo:
                                  "This is dynamic and powerful exercise that engages multiple muscle and groups",
                              exerciseName: "Inline Bench Situp")),
                    ).pOnly(bottom: 16.h);
                  }),
              15.heightBox,
              Text("Round 2",
                  style: MTextStyles.mNormalStyle(
                      fontWeight: FontWeight.w700,
                      color: MColors.yellowishColor)),
              15.heightBox,
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: advanceTrainingTilesRound2.length,
                  itemBuilder: (context, index) {
                    final notificationn2 = advanceTrainingTilesRound2[index];
                    return NotificationShowing(
                        notificationSubTitle:
                            notificationn2.notificationSubTitle,
                        notificationTitle: notificationn2.notificationTitle,
                        leadingContainerIcon:
                            notificationn2.leadingContainerIcon,
                        leadingContainerColor:
                            notificationn2.leadingContainerColor,
                        actionText: notificationn2.actionText,
                        onPlayIconTapped: () => Get.to(() =>
                            const VideoWithExerciseDetailsContainer(
                                videoUrl:
                                    "https://videos.pexels.com/video-files/8861904/8861904-sd_540_960_24fps.mp4",
                                appbarTitle: "Advance",
                                exerciseInfo:
                                    "The swinging motion engages the core muscles, promoting stability",
                                exerciseName: "Romanian Deadlifts"))).pOnly(
                        bottom: 16.h);
                  })
            ]).px(35.w),
          ],
        ),
      ),
    );
  }
}
