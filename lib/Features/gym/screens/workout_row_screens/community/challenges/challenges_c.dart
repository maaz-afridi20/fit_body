import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter/cupertino.dart';

class ChallengesC extends StatelessWidget {
  const ChallengesC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MAppbar(
            showActionWidget: true, appbarTitle: "Weekly Challenge"),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ResizableContainer(widgets: [
            const TrainingOfTheDayContainer(
              img:
                  "https://fitwithursula.com/wp-content/uploads/2023/06/people-doing-indoor-cycling.jpg",
              trainingName: "Cycling Challenge",
              showNumberOfExercises: true,
              showTopRightTitle: false,
            ).px32().py20()
          ]),
          MHelperFunctions.mHeightBox(20),
          Text("Round 1",
                  style: MTextStyles.mNormalStyle(
                      fontWeight: FontWeight.w700,
                      color: MColors.yellowishColor))
              .px32(),
          MHelperFunctions.mHeightBox(15),
          ListView.builder(
              itemCount: communityChallengesData1.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final data = communityChallengesData1[index];
                return NotificationShowing(
                  actionText: data.actionText,
                  notificationSubTitle: data.notificationSubTitle,
                  notificationTitle: data.notificationTitle,
                  leadingContainerColor: data.leadingContainerColor,
                  leadingContainerIcon: CupertinoIcons.play_arrow_solid,
                  onPlayIconTapped: () => MHelperFunctions.navigateTo(
                      context,
                      VideoWithExerciseDetailsContainer(
                          videoUrl:
                              "https://videos.pexels.com/video-files/6540201/6540201-sd_360_640_24fps.mp4",
                          appbarTitle: "Weekly Challenges",
                          exerciseInfo: "this is some info i dont knoww.....",
                          exerciseName: data.notificationTitle)),
                ).pOnly(bottom: 10.h);
              }).px32(),
          MHelperFunctions.mHeightBox(15),
          Text("Round 2",
                  style: MTextStyles.mNormalStyle(
                      fontWeight: FontWeight.w700,
                      color: MColors.yellowishColor))
              .px32(),
          MHelperFunctions.mHeightBox(15),
          ListView.builder(
              itemCount: communityChallengesData2.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final data = communityChallengesData2[index];
                return NotificationShowing(
                    actionText: data.actionText,
                    notificationSubTitle: data.notificationSubTitle,
                    notificationTitle: data.notificationTitle,
                    leadingContainerColor: data.leadingContainerColor,
                    leadingContainerIcon: CupertinoIcons.play_arrow_solid,
                    onPlayIconTapped: () => MHelperFunctions.navigateTo(
                        context,
                        VideoWithExerciseDetailsContainer(
                            videoUrl:
                                "https://videos.pexels.com/video-files/3694913/3694913-uhd_1440_2560_30fps.mp4",
                            appbarTitle: "Weekly Challenges",
                            exerciseInfo: "This is a random gym video",
                            exerciseName: data.notificationTitle))).pOnly(
                    bottom: 10.h);
              }).px32()
        ]).wrapWithSingleChildScrollView());
  }
}
