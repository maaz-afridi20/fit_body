import 'package:fit_body/Utils/constants/exports.dart';

class StartAdvanceScreen extends StatelessWidget {
  const StartAdvanceScreen({super.key});

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
                          "https://cdn.muscleandstrength.com/sites/default/files/images/cable-tricep-extension.jpg",
                      trainingName: "Upper Body Fitness")
                ]),
            20.heightBox,
          ],
        ),
      ),
    );
  }
}
