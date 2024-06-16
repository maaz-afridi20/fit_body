import 'package:fit_body/Utils/constants/exports.dart';

class WorkoutNutritionsScreen extends StatelessWidget {
  const WorkoutNutritionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final workoutRowwController = WorkoutRowController.instance;
    return Scaffold(
      appBar: MAppbar(
          appbarTitle: 'Nutritions',
          showActionWidget: true,
          showLeadingWidget: true,
          leadingWidget: GestureDetector(
              onTap: () {
                workoutRowwController.updateIndex(0);
                Get.back();
              },
              child: const Icon(Icons.arrow_back_ios_new_rounded,
                  color: MColors.yellowishColor))),
      body: Column(
        children: [
          ResizableContainer(widgets: [
            const TrainingOfTheDayContainer(
              img:
                  "https://www.avogel.ca/img3/700x500/8-reasons-why-you-should-drink-carrot-juice.jpg?m=1570031805",
              trainingName: "Carrot And Orange Smoothie",
              topRightTitle: "Recipie Of The Day",
              showNumberOfExercises: false,
            ).px(35.w).py(22.h),
          ])
        ],
      ),
    );
  }
}
