import 'package:fit_body/Utils/constants/exports.dart';

class ChallengesC extends StatelessWidget {
  const ChallengesC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppbar(
          showActionWidget: true, appbarTitle: "Weekly Challenge"),
      body: Column(
        children: [
          ResizableContainer(widgets: [
            const TrainingOfTheDayContainer(
              img:
                  "https://fitwithursula.com/wp-content/uploads/2023/06/people-doing-indoor-cycling.jpg",
              trainingName: "Cycling Challenge",
              showNumberOfExercises: true,
              showTopRightTitle: false,
            ).px32().py20()
          ])
        ],
      ),
    );
  }
}
