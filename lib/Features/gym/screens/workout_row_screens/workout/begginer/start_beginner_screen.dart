import '../../../../../../Utils/constants/exports.dart';

class StartBeginnerScreen extends StatelessWidget {
  const StartBeginnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ResizableContainer(
            applyWidgetPadding:
                EdgeInsets.symmetric(horizontal: 22.w, vertical: 35.h),
            widgets: [
              TrainingOfTheDayContainer(
                  img:
                      "https://images.pexels.com/photos/414029/pexels-photo-414029.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                  trainingName: "Functional Training",
                  onTapp: () => Get.to(() => const BegginerWorkoutScreen()))
            ]),
        MHelperFunctions.mHeightBox(20),
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
              MHelperFunctions.mHeightBox(20),
              const FavouritesScreenContainer(
                  mainTitle: "Upper Body",
                  imageString:
                      "https://images.pexels.com/photos/1552249/pexels-photo-1552249.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                  subTitle: [
                    Text('60 Minutes'),
                    Text('1320 KCal'),
                    Text('5 Exercise')
                  ]),
              MHelperFunctions.mHeightBox(18),
              FavouritesScreenContainer(
                  mainTitle: "Boost Energy And Vitality",
                  imageString:
                      "https://images.pexels.com/photos/3768913/pexels-photo-3768913.jpeg?auto=compress&cs=tinysrgb&w=600",
                  subTitle: [
                    Text(MTextString.incorporating),
                  ]),
              MHelperFunctions.mHeightBox(18),
              const FavouritesScreenContainer(
                  mainTitle: "Full Body Stretching",
                  imageString:
                      "https://images.pexels.com/photos/4662356/pexels-photo-4662356.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                  subTitle: [
                    Text('45 Minutes'),
                    Text('1520 KCal'),
                    Text('5 Exercise')
                  ])
            ]).px(35.w)
      ],
    ).wrapWithSingleChildScrollView());
  }
}
