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
          crossAxisAlignment: CrossAxisAlignment.start,
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

            //
            //! row continer with and image...
            MHelperFunctions.giveHeight(19.h),
            ResizableContainer(
                applyWidgetPadding:
                    EdgeInsets.symmetric(horizontal: 35.w, vertical: 25.h),
                widgets: [
                  RowContainerWithAndImg(
                    imageString: MImageStrings.plankwomen,
                    backgroundColor: const Color(0xff212020),
                    childrensInColumn: [
                      Text(
                        'Weekly Challenge',
                        style: MTextStyles.mHeadingStyle(
                            fontSize: 24.sp, color: MColors.yellowishColor),
                        textAlign: TextAlign.center,
                      ),
                      MHelperFunctions.giveHeight(2.h),
                      Text('Plank With Hip Twist',
                          style: MTextStyles.mNormalStyle(fontSize: 12.sp),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis),
                    ],
                  )
                ]),
            //
            //!
            MHelperFunctions.giveHeight(16.h),
            Text('Articles And Tips',
                style: MTextStyles.mNormalStyle(color: MColors.yellowishColor)),

            //
            //! only image container...
            MHelperFunctions.giveHeight(8.h),
            const Row(
              children: [
                OnlyImageContainer(imageString: MImageStrings.supplimentwomen),
                OnlyImageContainer(imageString: MImageStrings.dailyroutinemen),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
