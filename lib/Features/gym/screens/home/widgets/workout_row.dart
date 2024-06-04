import 'package:fit_body/Utils/constants/exports.dart';
import 'package:flutter/cupertino.dart';

class WorkOutRow extends StatelessWidget {
  const WorkOutRow({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WorkoutRowController());
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      controller.columnWithImgAndText(Icons.fitness_center, "WorkOut", 0,
          () => Get.to(() => const MainWorkoutScreen())),
      StraightVerticleLine(
          height: 40.h, width: 1, color: MColors.darkPurpleColor),
      controller.columnWithImgAndText(CupertinoIcons.chart_bar_fill, "Progress",
          1, () => Get.to(() => const ProgressTrackingScreen())),
      StraightVerticleLine(
          height: 40.h, width: 1, color: MColors.darkPurpleColor),
      controller.columnWithImgAndText(Icons.apple_rounded, "Nutrition", 2,
          () => Get.to(() => const WorkoutNutritionsScreen())),
      StraightVerticleLine(
          height: 40.h, width: 1, color: MColors.darkPurpleColor),
      controller.columnWithImgAndText(CupertinoIcons.group_solid, "Community",
          3, () => Get.to(() => const WorkoutRowCommunityScreen()))
    ]);
  }
}
