import 'package:fit_body/Utils/constants/exports.dart';

class MainWorkoutScreen extends StatelessWidget {
  const MainWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final workoutRowwController = WorkoutRowController.instance;
    return SafeArea(
      child: Scaffold(
        appBar: MAppbar(
            appbarTitle: 'WorkOut',
            showActionWidget: true,
            showLeading: GestureDetector(
                onTap: () {
                  workoutRowwController.updateIndex(0);
                  Get.back();
                },
                child: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: MColors.yellowishColor))),
        body: Column(
          children: [
            Row(children: [
              Expanded(
                  child: MCircularContainer(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 13),
                      titleText: 'Beginner',
                      heightOfContainer: 36.h)),
              4.widthBox,
              Expanded(
                  child: MCircularContainer(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 13),
                      titleText: 'Intermedate',
                      heightOfContainer: 36.h)),
              4.widthBox,
              Expanded(
                  child: MCircularContainer(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 13),
                      titleText: 'Advance',
                      heightOfContainer: 36.h))
            ]).px(35.w),
            //
            //
            //! training of the day container...
            24.heightBox,
            ResizableContainer(
                applyWidgetPadding:
                    EdgeInsets.symmetric(horizontal: 22.w, vertical: 35.h),
                widgets: const [TrainingOfTheDayContainer()]),
            20.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Let's go beginner",
                    style: MTextStyles.mHeadingStyle(
                        fontSize: 20.sp, fontWeight: FontWeight.w500)),
                Text("Explore Different Workout Styles",
                    style: MTextStyles.mNormalStyle(fontSize: 12.sp)),
                20.heightBox,
              ],
            ).px(35.w)
          ],
        ),
      ),
    );
  }
}
