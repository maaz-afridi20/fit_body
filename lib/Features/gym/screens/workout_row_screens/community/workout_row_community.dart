import 'package:fit_body/Utils/constants/exports.dart';

class WorkoutRowCommunityScreen extends StatelessWidget {
  const WorkoutRowCommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final workoutRowwController = WorkoutRowController.instance;
    return Scaffold(
      appBar: MAppbar(
        appbarTitle: 'Community',
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
