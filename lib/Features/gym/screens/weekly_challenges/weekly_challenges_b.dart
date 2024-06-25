import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter/cupertino.dart';

class WeeklyChallengeB extends StatelessWidget {
  const WeeklyChallengeB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppbar(
          showActionWidget: true, appbarTitle: "Weekly Challenge"),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ResizableContainer(widgets: [
          const TrainingOfTheDayContainer(
                  img:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFkbeWeOwIfRsW7nI61kFEv2lOMeUsHYrUGA&s",
                  trainingName: "",
                  showNumberOfExercises: true,
                  showTopRightTitle: true,
                  topRightTitle: "Pull Out")
              .px32()
              .py20()
        ]),
        MHelperFunctions.mHeightBox(20),
        Text("Round 1",
                style: MTextStyles.mNormalStyle(
                    fontWeight: FontWeight.w700, color: MColors.yellowishColor))
            .px32(),
        MHelperFunctions.mHeightBox(15),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: weeklyChellengeData.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final data = weeklyChellengeData[index];
              return NotificationShowing(
                actionText: data.repetitionText,
                notificationSubTitle: data.subtitleTitle,
                notificationTitle: data.mainTitle,
                leadingContainerColor: data.leadingIconColor,
                leadingContainerIcon: CupertinoIcons.play_arrow_solid,
                onPlayIconTapped: () => MHelperFunctions.navigateTo(
                    context,
                    VideoWithExerciseDetailsContainer(
                        videoUrl: data.videoUrl,
                        appbarTitle: "Weekly Challenges",
                        exerciseInfo: MTextString.loremIpsum,
                        exerciseName: data.mainTitle)),
              ).pOnly(bottom: 10.h);
            }).px32(),
        MHelperFunctions.mHeightBox(15),
        Text("Round 2",
                style: MTextStyles.mNormalStyle(
                    fontWeight: FontWeight.w700, color: MColors.yellowishColor))
            .px32(),
        MHelperFunctions.mHeightBox(15),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: weeklyChellengeData2.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final data = weeklyChellengeData2[index];
              return NotificationShowing(
                  actionText: data.repetitionText,
                  notificationSubTitle: data.subtitleTitle,
                  notificationTitle: data.mainTitle,
                  leadingContainerColor: data.leadingIconColor,
                  leadingContainerIcon: CupertinoIcons.play_arrow_solid,
                  onPlayIconTapped: () => MHelperFunctions.navigateTo(
                      context,
                      VideoWithExerciseDetailsContainer(
                          videoUrl: data.videoUrl,
                          appbarTitle: "Weekly Challenges",
                          exerciseInfo: MTextString.loremIpsum,
                          exerciseName: data.mainTitle))).pOnly(bottom: 10.h);
            }).px32()
      ]).wrapWithSingleChildScrollView(),
    );
  }
}
