import 'package:fit_body/Utils/constants/exports.dart';

class StartAdvanceScreen extends StatelessWidget {
  const StartAdvanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResizableContainer(
                applyWidgetPadding:
                    EdgeInsets.symmetric(horizontal: 22.w, vertical: 35.h),
                widgets: [
                  TrainingOfTheDayContainer(
                    img:
                        "https://cdn.muscleandstrength.com/sites/default/files/images/cable-tricep-extension.jpg",
                    trainingName: "Upper Body Fitness",
                    onTapp: () => Get.to(() => const AdvanceWorkoutScreen()),
                  )
                ]),
            20.heightBox,
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Unlock Your Potential',
                      style: MTextStyles.mHeadingStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: MColors.yellowishColor)),
                  16.heightBox,
                  Text('Explore Advance Fitness Routines',
                      style: MTextStyles.mNormalStyle()),
                  21.heightBox,
                  FavouritesScreenContainer(
                      mainTitle: "Cardio Boxing",
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
                          "https://highstreetgent.com/wp-content/uploads/2022/01/cross-punch-boxing.jpeg?w=1024"),
                  18.heightBox,
                  FavouritesScreenContainer(
                      mainTitle: "Hypertrophy Legs",
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
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeBhB5p9bekFcQdPX0RM9YMZarSE4C8FJoeQ&s"),
                  18.heightBox,
                  FavouritesScreenContainer(
                      mainTitle: "Rest or Active",
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
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-jPPo5KE2d_aiAl_H7vxvrQ1k1aeo8Y4dTg&s"),
                  20.heightBox
                ]).px(30.w)
          ],
        ),
      ),
    );
  }
}
