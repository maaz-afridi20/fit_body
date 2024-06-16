import 'package:fit_body/Utils/constants/exports.dart';

class CheckYourCustomRoutine extends StatelessWidget {
  const CheckYourCustomRoutine({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AddingCustomRoutineController>();
    return Scaffold(
      appBar:
          const MAppbar(showActionWidget: true, appbarTitle: "Your Routine"),
      body: Obx(() {
        if (controller.addedItems.isEmpty) {
          return "No Items Added Yet".text.white.size(15).makeCentered();
        }

        return GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.addedItems.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 20.h,
                crossAxisSpacing: 9.w,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              final itemIndex = controller.addedItems[index];
              final exercise = customExerciseRoutineData[itemIndex];
              print(
                  "Exercise : ${exercise.exerciseName}, Video Url : ${exercise.videoUrl}, Info ${exercise.exerciseInfo}");
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
                                        width:
                                            MHelperFunctions.screenWidth())))),

                        //
                        //! play video icon
                        Positioned(
                            right: 10.w,
                            top: 80.h,
                            child: Container(
                                key: ValueKey('check_$index'),
                                height: 23.h,
                                width: 23.w,
                                decoration: const BoxDecoration(
                                    color: MColors.darkPurpleColor,
                                    shape: BoxShape.circle),
                                child: const Icon(Icons.play_arrow_rounded,
                                        color: Colors.white)
                                    .centered()
                                    .onTap(() {
                                  Get.to(() => VideoWithExerciseDetailsContainer(
                                      videoUrl: exercise.videoUrl!,
                                      appbarTitle: "Custom Routine",
                                      exerciseInfo: exercise.exerciseInfo ??
                                          "Some Error Occured While Loading Exercise Info...!",
                                      exerciseName: exercise.exerciseName));
                                }))),
                        //
                        //! exercise name
                        Positioned(
                            bottom: 13.h,
                            left: 11.w,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                              style: MTextStyles.mNormalStyle(
                                                  fontSize: 12.sp))
                                        ]),
                                        10.widthBox,
                                        Row(children: [
                                          Icon(
                                              Icons.local_fire_department_sharp,
                                              color: MColors.purpleColor,
                                              size: 10.sp),
                                          2.widthBox,
                                          Text(exercise.repeatation,
                                              style: MTextStyles.mNormalStyle(
                                                  fontSize: 12.sp))
                                        ])
                                      ])
                                ]))
                      ])));
            }).px32();
      }),
    );
  }
}
