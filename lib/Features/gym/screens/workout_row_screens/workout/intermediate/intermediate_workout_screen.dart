import 'package:fit_body/Utils/constants/exports.dart';
import 'package:fit_body/data/local_data_lists/intermediate_workout_tile_data.dart';

class IntermediateWorkoutScreen extends StatelessWidget {
  const IntermediateWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            const MAppbar(appbarTitle: 'Intermediate', showActionWidget: true),
        body: SingleChildScrollView(
            child: Column(children: [
          ResizableContainer(
              applyWidgetPadding:
                  EdgeInsets.symmetric(horizontal: 22.w, vertical: 35.h),
              widgets: const [
                TrainingOfTheDayContainer(
                  img:
                      "https://images.herzindagi.info/image/2022/May/fun-cardio-workout.jpg",
                  trainingName: "",
                  topRightTitle: "Cardio Fitness",
                  containerHeight: 160,
                )
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
                itemCount: intermediateTrainingTilesRound1.length,
                itemBuilder: (context, index) {
                  final notificationn = intermediateTrainingTilesRound1[index];
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
                                  "https://videos.pexels.com/video-files/4761425/4761425-hd_720_1366_25fps.mp4",
                              appbarTitle: "Intermediate",
                              exerciseInfo:
                                  "Kettlebell swings are a dynamic and powerful exercise that engages multiple muscle groups",
                              exerciseName: "Kettlebell Swings"))).pOnly(
                      bottom: 16.h);
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
                itemCount: intermediateTrainingTilesRound2.length,
                itemBuilder: (context, index) {
                  final notificationn2 = intermediateTrainingTilesRound2[index];
                  return NotificationShowing(
                      notificationSubTitle: notificationn2.notificationSubTitle,
                      notificationTitle: notificationn2.notificationTitle,
                      leadingContainerIcon: notificationn2.leadingContainerIcon,
                      leadingContainerColor:
                          notificationn2.leadingContainerColor,
                      actionText: notificationn2.actionText,
                      onPlayIconTapped: () => Get.to(() =>
                          const VideoWithExerciseDetailsContainer(
                              videoUrl:
                                  "https://videos.pexels.com/video-files/5319428/5319428-sd_540_960_25fps.mp4",
                              appbarTitle: "Intermediate",
                              exerciseInfo:
                                  "They improve functional strength and movement patterns, aiding in everyday activities and sports performance",
                              exerciseName: "Bicep Curl"))).pOnly(bottom: 16.h);
                })
          ]).px(35.w),
        ])));
  }
}
