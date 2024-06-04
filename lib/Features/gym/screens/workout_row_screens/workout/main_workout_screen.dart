import 'package:fit_body/Utils/constants/exports.dart';

class MainWorkoutScreen extends StatelessWidget {
  const MainWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final workoutRowwController = WorkoutRowController.instance;
    return Scaffold(
      appBar: MAppbar(
        appbarTitle: 'Progress Screen',
        showLeading: GestureDetector(
            onTap: () {
              workoutRowwController.updateIndex(0);
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios_new_rounded,
                color: MColors.yellowishColor)),
        action: [
          Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.search, color: MColors.darkPurpleColor),
                MHelperFunctions.giveWidth(20.w),
                const Icon(Icons.notifications, color: MColors.darkPurpleColor),
                MHelperFunctions.giveWidth(20.w),
                const Icon(Icons.person_rounded, color: MColors.darkPurpleColor)
              ]).pOnly(right: 35.w)
        ],
      ),
    );
  }
}
