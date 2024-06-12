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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Expanded(
                  child: MCircularContainer(
                      onPress: () =>
                          Get.to(() => const BegginerWorkoutScreen()),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 13),
                      titleText: 'Beginner',
                      heightOfContainer: 36.h)),
              4.widthBox,
              Expanded(
                  child: MCircularContainer(
                      onPress: () =>
                          Get.to(() => const IntermediateWorkoutScreen()),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 13),
                      titleText: 'Intermedate',
                      heightOfContainer: 36.h)),
              4.widthBox,
              Expanded(
                  child: MCircularContainer(
                      onPress: () => Get.to(() => const AdvanceWorkoutScreen()),
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
                widgets: const [
                  TrainingOfTheDayContainer(
                      img:
                          "https://images.pexels.com/photos/414029/pexels-photo-414029.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      trainingName: "Functional Training")
                ]),
            20.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Let's go beginner",
                    style: MTextStyles.mHeadingStyle(
                        color: MColors.yellowishColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500)),
                Text("Explore Different Workout Styles",
                    style: MTextStyles.mNormalStyle(fontSize: 12.sp)),
                20.heightBox,
                const FavouritesScreenContainer(
                    mainTitle: "Upper Body",
                    imageString:
                        "https://images.pexels.com/photos/1552249/pexels-photo-1552249.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    subTitle: [
                      Text('60 Minutes'),
                      Text('1320 KCal'),
                      Text('5 Exercise')
                    ]),
                18.heightBox,
                FavouritesScreenContainer(
                    mainTitle: "Boost Energy And Vitality",
                    imageString:
                        "https://images.pexels.com/photos/3768913/pexels-photo-3768913.jpeg?auto=compress&cs=tinysrgb&w=600",
                    subTitle: [
                      Text(MTextString.incorporating),
                    ]),
                18.heightBox,
                const FavouritesScreenContainer(
                    mainTitle: "Full Body Stretching",
                    imageString:
                        "https://images.pexels.com/photos/4662356/pexels-photo-4662356.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    subTitle: [
                      Text('45 Minutes'),
                      Text('1520 KCal'),
                      Text('5 Exercise')
                    ]),
              ],
            ).px(35.w)
          ],
        ),
      ),
    ));
  }
}
