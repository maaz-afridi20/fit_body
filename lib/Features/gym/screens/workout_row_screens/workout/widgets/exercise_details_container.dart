import 'package:flutter/cupertino.dart';

import '../../../../../../Utils/constants/exports.dart';

class ExerciseDetailsContainer extends StatelessWidget {
  const ExerciseDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130.h,
      decoration: BoxDecoration(
          color: MColors.switchBtnColor,
          borderRadius: BorderRadius.circular(25.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Sqauts",
              style: MTextStyles.mHeadingStyle(
                  fontSize: 20.sp, fontWeight: FontWeight.w500)),
          10.heightBox,
          Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed cursus libero eget.',
              textAlign: TextAlign.center,
              style: MTextStyles.mNormalStyle(
                  color: Colors.black, fontSize: 12.sp)),
          6.heightBox,
          Container(
            height: 36.h,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(28.r)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(mainAxisSize: MainAxisSize.min, children: [
                  const Icon(Icons.access_time_outlined, size: 10),
                  Text("30 Sec", style: MTextStyles.mNormalStyle())
                ]),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.local_fire_department_sharp, size: 10),
                    Text("3 Rep", style: MTextStyles.mNormalStyle())
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(CupertinoIcons.waveform_circle, size: 10),
                    Text("Beginner", style: MTextStyles.mNormalStyle())
                  ],
                ),
              ],
            ),
          ).px(15.w)
        ],
      ),
    );
  }
}
