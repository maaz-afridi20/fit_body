import 'package:fit_body/Utils/constants/exports.dart';
import 'package:fit_body/data/local_data_lists/beginner_workout_tile_data.dart';

class BegginerWorkoutScreen extends StatelessWidget {
  const BegginerWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppbar(appbarTitle: 'Begginer', showActionWidget: true),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ResizableContainer(
                applyWidgetPadding:
                    EdgeInsets.symmetric(horizontal: 22.w, vertical: 35.h),
                widgets: const [
                  TrainingOfTheDayContainer(
                    img:
                        "https://images.pexels.com/photos/414029/pexels-photo-414029.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    trainingName: "",
                    topRightTitle: "Functional Training",
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
                  itemCount: beginnerTrainingTilesRound1.length,
                  itemBuilder: (context, index) {
                    final notificationn = beginnerTrainingTilesRound1[index];
                    return NotificationShowing(
                      notificationSubTitle: notificationn.notificationSubTitle,
                      notificationTitle: notificationn.notificationTitle,
                      leadingContainerIcon: notificationn.leadingContainerIcon,
                      leadingContainerColor:
                          notificationn.leadingContainerColor,
                      actionText: notificationn.actionText,
                      onPlayIconTapped: () =>
                          Get.to(() => const CreateYourOwnBeginnerRoutine()),
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
                  itemCount: beginnerTrainingTilesRound2.length,
                  itemBuilder: (context, index) {
                    final notificationn2 = beginnerTrainingTilesRound2[index];
                    return NotificationShowing(
                            notificationSubTitle:
                                notificationn2.notificationSubTitle,
                            notificationTitle: notificationn2.notificationTitle,
                            leadingContainerIcon:
                                notificationn2.leadingContainerIcon,
                            leadingContainerColor:
                                notificationn2.leadingContainerColor,
                            actionText: notificationn2.actionText,
                            onPlayIconTapped: () => Get.to(
                                () => const CreateYourOwnBeginnerRoutine()))
                        .pOnly(bottom: 16.h);
                  })
            ]).px(35.w),
          ],
        ),
      ),
    );
  }
}
