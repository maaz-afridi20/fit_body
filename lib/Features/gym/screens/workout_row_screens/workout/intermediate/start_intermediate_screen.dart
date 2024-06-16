import 'package:fit_body/Utils/constants/exports.dart';

class StartIntermediateScreen extends StatelessWidget {
  const StartIntermediateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      ResizableContainer(
          applyWidgetPadding:
              EdgeInsets.symmetric(horizontal: 22.w, vertical: 35.h),
          widgets: [
            TrainingOfTheDayContainer(
              img:
                  "https://images.herzindagi.info/image/2022/May/fun-cardio-workout.jpg",
              trainingName: "Cardio Fitness",
              onTapp: () => Get.to(() => const IntermediateWorkoutScreen()),
            )
          ]),
      20.heightBox,
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Keep Raising Your Level',
                style: MTextStyles.mHeadingStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: MColors.yellowishColor)),
            16.heightBox,
            Text('Keep Raising Your Level', style: MTextStyles.mNormalStyle()),
            21.heightBox,
            FavouritesScreenContainer(
                mainTitle: "Circuit Training",
                subTitle: [
                  Text('50 Minutes',
                      style: MTextStyles.mNormalStyle(
                          fontSize: 12.sp, color: MColors.balckColor)),
                  Text('1300 KCal',
                      style: MTextStyles.mNormalStyle(
                          fontSize: 12.sp, color: MColors.balckColor)),
                  Text('5 Exercises',
                      style: MTextStyles.mNormalStyle(
                          fontSize: 12.sp, color: MColors.balckColor))
                ],
                imageString:
                    "https://www.sundried.com/cdn/shop/articles/sundried-circuit-workout-program.jpg?v=1503058667"),
            18.heightBox,
            FavouritesScreenContainer(
                mainTitle: "Split Strength Training",
                subTitle: [
                  Text('12 Minutes',
                      style: MTextStyles.mNormalStyle(
                          fontSize: 12.sp, color: MColors.balckColor)),
                  Text('1250 KCal',
                      style: MTextStyles.mNormalStyle(
                          fontSize: 12.sp, color: MColors.balckColor)),
                  Text('5 Exercises',
                      style: MTextStyles.mNormalStyle(
                          fontSize: 12.sp, color: MColors.balckColor))
                ],
                imageString:
                    "https://images.pexels.com/photos/2294361/pexels-photo-2294361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
            18.heightBox,
            FavouritesScreenContainer(
                mainTitle: "Resistance Training",
                subTitle: [
                  Text('10 Minutes',
                      style: MTextStyles.mNormalStyle(
                          fontSize: 12.sp, color: MColors.balckColor)),
                  Text('1050 KCal',
                      style: MTextStyles.mNormalStyle(
                          fontSize: 12.sp, color: MColors.balckColor)),
                  Text('5 Exercises',
                      style: MTextStyles.mNormalStyle(
                          fontSize: 12.sp, color: MColors.balckColor))
                ],
                imageString:
                    "https://www.sespodiatry.com.au/wp-content/uploads/2024/04/1920_1618215879_typesofresistancetraining.jpg"),
          ]).px(30.w),
      20.heightBox
    ]).wrapWithSingleChildScrollView());
  }
}
