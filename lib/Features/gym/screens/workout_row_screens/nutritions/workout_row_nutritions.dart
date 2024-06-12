import 'package:fit_body/Utils/constants/exports.dart';

class WorkoutNutritionsScreen extends StatelessWidget {
  const WorkoutNutritionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final workoutRowwController = WorkoutRowController.instance;
    return Scaffold(
      appBar: MAppbar(
        appbarTitle: 'Nutritions',
        showActionWidget: false,
        showLeadingWidget: true,
        leadingWidget: GestureDetector(
            onTap: () {
              workoutRowwController.updateIndex(0);
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios_new_rounded,
                color: MColors.yellowishColor)),
      ),
    );
  }
}
