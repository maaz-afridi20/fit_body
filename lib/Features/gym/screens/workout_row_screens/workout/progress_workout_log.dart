import 'package:fit_body/Utils/constants/exports.dart';

class ProgressWorkoutLog extends StatelessWidget {
  const ProgressWorkoutLog({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          29.heightBox,
          const MDivider(lineColor: Colors.white),
          15.heightBox,
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                "Choose Date".text.white.make(),
                "Month".text.white.make()
              ]),
          15.heightBox,
          const MDivider(lineColor: Colors.white),
          25.heightBox,
          //
          //
          //! Table Calender...
          const MTableCaleder(),
          25.heightBox,
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Activities",
                  style: MTextStyles.mHeadingStyle(
                      color: MColors.yellowishColor,
                      fontWeight: FontWeight.w500))),
          10.heightBox,
          const MProgressListile(
              title: '120 KCal',
              subtitle: 'Upper Body Workout',
              time: 'June 09',
              duration: 'Duration\n25 Min'),
          16.heightBox,
          const MProgressListile(
              title: '130 KCal',
              subtitle: 'Pull Out',
              time: 'April 15 - 4:00 PM',
              duration: 'Duration\n35 Min'),
          10.heightBox
        ],
      ).px(35.w),
    );
  }
}
