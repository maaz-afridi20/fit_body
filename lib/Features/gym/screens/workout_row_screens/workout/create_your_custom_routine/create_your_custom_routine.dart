import 'package:fit_body/Utils/constants/exports.dart';

class CreateYourCustomRoutine extends StatelessWidget {
  const CreateYourCustomRoutine({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddingCustomRoutineController());
    return Scaffold(
      appBar: const MAppbar(
          showActionWidget: true, appbarTitle: "Create Your Routine"),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20.h,
                    crossAxisSpacing: 9.w,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final exercise = customExerciseRoutineData[index];
                  return Expanded(
                      child: Container(
                          height: 160.h,
                          decoration: BoxDecoration(
                              color: MColors.balckColor,
                              borderRadius: BorderRadius.circular(16.r)),
                          child: Stack(children: [
                            SizedBox(
                                height: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16.r),
                                        topRight: Radius.circular(16.r)),
                                    child: getImageWidget(exercise.imageUrl,
                                        placeHolder: (__, _) => GeneralShimmer(
                                            height: 90,
                                            width: MHelperFunctions
                                                .screenWidth())))),

                            //
                            //! check mark icon
                            Positioned(
                                right: 10.w,
                                top: 80.h,
                                child: Obx(() => AnimatedSwitcher(
                                    duration: const Duration(milliseconds: 300),
                                    transitionBuilder: (child, animation) =>
                                        ScaleTransition(
                                            scale: animation, child: child),
                                    child: controller.isAdded(index)
                                        ? Container(
                                            key: ValueKey('check_$index'),
                                            height: 23.h,
                                            width: 23.w,
                                            decoration: const BoxDecoration(
                                                color: MColors.yellowishColor,
                                                shape: BoxShape.circle),
                                            child: const Icon(Icons.check)
                                                .centered())
                                        : GestureDetector(
                                            key: ValueKey("add_$index"),
                                            onTap: () =>
                                                controller.toggleItems(index),
                                            child: Container(
                                                height: 23.h,
                                                width: 23.w,
                                                decoration: const BoxDecoration(
                                                    color: MColors.purpleColor,
                                                    shape: BoxShape.circle),
                                                child: const Icon(Icons.add,
                                                        color: Colors.white)
                                                    .centered()))))),
                            //
                            //! exercise name
                            Positioned(
                                bottom: 13.h,
                                left: 11.w,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(exercise.exerciseName,
                                          style: MTextStyles.mNormalStyle(
                                              color: MColors.yellowishColor,
                                              fontSize: 12.sp)),
                                      8.heightBox,
                                      Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(children: [
                                              Icon(Icons.timer,
                                                  color: MColors.purpleColor,
                                                  size: 10.sp),
                                              2.widthBox,
                                              Text(exercise.duration,
                                                  style:
                                                      MTextStyles.mNormalStyle(
                                                          fontSize: 12.sp))
                                            ]),
                                            10.widthBox,
                                            Row(children: [
                                              Icon(
                                                  Icons
                                                      .local_fire_department_sharp,
                                                  color: MColors.purpleColor,
                                                  size: 10.sp),
                                              2.widthBox,
                                              Text(exercise.repeatation,
                                                  style:
                                                      MTextStyles.mNormalStyle(
                                                          fontSize: 12.sp))
                                            ]),
                                          ])
                                    ])),
                          ])));
                }),
            20.heightBox,
            MCircularContainer(
              heightOfContainer: 36.h,
              widthOfContainer: MHelperFunctions.screenWidth(),
              backgroundColor: MColors.yellowishColor,
              textFontsize: 17.sp,
              textFontWeight: FontWeight.w500,
              titleText: "Check Your Routine",
              onPress: () => Get.to(() => const CheckYourCustomRoutine()),
            ),
            20.heightBox,
          ],
        ).px(30.w),
      ),
    );
  }
}
