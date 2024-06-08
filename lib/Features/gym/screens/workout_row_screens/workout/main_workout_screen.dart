import 'package:fit_body/Utils/constants/exports.dart';

class MainWorkoutScreen extends StatelessWidget {
  const MainWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final workoutRowwController = WorkoutRowController.instance;
    return Scaffold(
      appBar: MAppbar(
        appbarTitle: 'WorkOut',
        showActionWidget: true,
        showBottomWidget: true,
        showLeading: GestureDetector(
            onTap: () {
              workoutRowwController.updateIndex(0);
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios_new_rounded,
                color: MColors.yellowishColor)),
      ),
      body: Column(
        children: [
          Row(children: [
            Expanded(
                child: MCircularContainer(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 13),
                    titleText: 'Beginner',
                    heightOfContainer: 36.h)),
            4.widthBox,
            Expanded(
                child: MCircularContainer(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 13),
                    titleText: 'Intermedate',
                    heightOfContainer: 36.h)),
            4.widthBox,
            Expanded(
                child: MCircularContainer(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 13),
                    titleText: 'Advance',
                    heightOfContainer: 36.h))
          ]).px(35.w),
          24.heightBox,
          ResizableContainer(widgets: [
            Container(
              height: 200,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
              child: Stack(
                children: [
                  getImageWidget(
                      placeHolder: (p0, p1) => const GeneralShimmer(),
                      "https://images.pexels.com/photos/414029/pexels-photo-414029.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                  Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        height: 18,
                        width: 118,
                        decoration: BoxDecoration(
                            color: MColors.yellowishColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.r),
                              topLeft: Radius.circular(30.r),
                              bottomLeft: Radius.circular(30.r),
                            )),
                        child: Text("Training of the day",
                            style: MTextStyles.mNormalStyle(
                                fontSize: 12.sp, color: MColors.balckColor)),
                      )),
                  Positioned(
                      bottom: 0,
                      child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: MColors.balckColor.withOpacity(0.8),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.r),
                                topLeft: Radius.circular(30.r),
                                bottomLeft: Radius.circular(30.r),
                              )),
                          child: Column(children: [
                            "Functional Training"
                                .text
                                .size(14.sp)
                                .fontWeight(FontWeight.w500)
                                .color(MColors.yellowishColor)
                                .make(),
                            const Row(children: [
                              Text('45 Min'),
                              Text('1450 KCal'),
                              Text('5 Exercise'),
                              Icon(Iconsax.star_1)
                            ])
                          ])))
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
// PreferredSize(
//                     preferredSize: const Size.fromHeight(kToolbarHeight),
//                     child: Align(
//                       alignment: Alignment.bottomLeft,
//                       child: Text(
//                         MTextString.chellengeyourlimit,
//                         style: MTextStyles.mNormalStyle(),
//                       ).px(16.w),
//                     ))