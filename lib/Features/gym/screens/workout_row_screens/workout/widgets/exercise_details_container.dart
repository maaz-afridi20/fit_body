import 'package:flutter/cupertino.dart';

import '../../../../../../Utils/constants/exports.dart';

class ExerciseDetailsContainer extends StatelessWidget {
  const ExerciseDetailsContainer(
      {super.key, required this.exerciseName, required this.infoAboutExercise});

  final String exerciseName;
  final String infoAboutExercise;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 135.h,
      decoration: BoxDecoration(
          color: MColors.switchBtnColor,
          borderRadius: BorderRadius.circular(25.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(exerciseName,
              style: MTextStyles.mHeadingStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: MColors.listileBlackColor)),
          10.heightBox,
          Text(infoAboutExercise,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: MTextStyles.mNormalStyle(
                      color: Colors.black, fontSize: 12.sp))
              .px(8.w),
          6.heightBox,
          Container(
              height: 36.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28.r)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(mainAxisSize: MainAxisSize.min, children: [
                      const Icon(Icons.access_time_outlined, size: 10),
                      6.widthBox,
                      Text("30 Sec",
                          style: MTextStyles.mNormalStyle(
                              color: MColors.balckColor))
                    ]),
                    Row(mainAxisSize: MainAxisSize.min, children: [
                      const Icon(Icons.local_fire_department_sharp, size: 10),
                      6.widthBox,
                      Text("3 Rep",
                          style: MTextStyles.mNormalStyle(
                              color: MColors.balckColor))
                    ]),
                    Row(mainAxisSize: MainAxisSize.min, children: [
                      const Icon(CupertinoIcons.waveform_circle, size: 10),
                      6.widthBox,
                      Text("Beginner",
                          style: MTextStyles.mNormalStyle(
                              color: MColors.balckColor))
                    ])
                  ])).px(15.w)
        ],
      ),
    );
  }
}
