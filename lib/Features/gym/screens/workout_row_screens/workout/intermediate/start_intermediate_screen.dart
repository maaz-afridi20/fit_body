import 'package:fit_body/Utils/constants/exports.dart';

class StartIntermediateScreen extends StatelessWidget {
  const StartIntermediateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResizableContainer(
                applyWidgetPadding:
                    EdgeInsets.symmetric(horizontal: 22.w, vertical: 35.h),
                widgets: const [
                  TrainingOfTheDayContainer(
                      img:
                          "https://images.herzindagi.info/image/2022/May/fun-cardio-workout.jpg",
                      trainingName: "Cardio Fitness")
                ]),
            20.heightBox,
            Text('Keep Raising Your Level',
                style: MTextStyles.mHeadingStyle(
                    fontSize: 20, color: MColors.yellowishColor)),
            Text('Keep Raising Your Level', style: MTextStyles.mHeadingStyle())
          ],
        ),
      ),
    );
  }
}
