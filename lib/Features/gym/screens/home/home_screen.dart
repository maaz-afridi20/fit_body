import 'package:fit_body/AppComons/widgets/home/workout_time_container.dart';
import 'package:fit_body/Utils/constants/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) => MHelperFunctions.showAppExitDialogue(context),
      child: Scaffold(
        backgroundColor: MColors.balckColor,
        appBar: const HomeScreenAppbar(),
        body: Column(
          children: [
            //
            //! workout row..
            MHelperFunctions.giveHeight(12.h),
            const WorkOutRow(),

            //
            //! recommendation row...
            MHelperFunctions.giveHeight(5.h),
            const RecommendationRow(),
            MHelperFunctions.giveHeight(6.h),
            //
            //! image row...
            Row(
              children: [
                const WorkoutTimeContainer(
                    containerImage: MImageStrings.multiplewomens,
                    containerTitle: "Squat Exercise"),
                MHelperFunctions.giveWidth(10.w),
                const WorkoutTimeContainer(
                    containerImage: "assets/images/workingwomen2.jpg",
                    containerTitle: "Full Body Stretching"),
              ],
            ).px(35.w),

            MHelperFunctions.giveHeight(19.h),
            ResizableContainer(widgets: [
              Container(
                width: MHelperFunctions.screenWidth(),
                height: 325.h,
                decoration: BoxDecoration(
                    color: const Color(0xff212020),
                    borderRadius: BorderRadius.circular(20.r)),
                child: Row(
                  children: [
                    Text(
                      'Weekly Challenge',
                      style: MTextStyles.mHeadingStyle(
                          fontSize: 24.sp, color: MColors.yellowishColor),
                      textAlign: TextAlign.center,
                    ),
                    Image.asset(MImageStrings.plankwomen)
                  ],
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
