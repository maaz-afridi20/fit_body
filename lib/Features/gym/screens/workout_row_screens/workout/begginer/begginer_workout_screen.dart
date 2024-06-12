import 'package:fit_body/Utils/constants/exports.dart';

class BegginerWorkoutScreen extends StatelessWidget {
  const BegginerWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppbar(appbarTitle: 'Begginer', showActionWidget: true),
      body: Column(
        children: [
          ResizableContainer(
              applyWidgetPadding:
                  EdgeInsets.symmetric(horizontal: 22.w, vertical: 35.h),
              widgets: const [
                TrainingOfTheDayContainer(
                  img:
                      "https://images.pexels.com/photos/414029/pexels-photo-414029.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                  trainingName: "",
                  topRightTitle: "Functional Training",
                  containerHeight: 160,
                )
              ]),
          25.heightBox,
          Column(children: [
            Text("Round1",
                style: MTextStyles.mNormalStyle(
                    fontWeight: FontWeight.w500,
                    color: MColors.yellowishColor)),
            15.heightBox,
            const MCircularContainer(titleText: "abc"),
            const NotificationShowing(
              notificationSubTitle: "Dumber Rows",
              notificationTitle: "00:30",
            )
          ]).px(35.w),
        ],
      ),
    );
  }
}
