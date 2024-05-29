import 'package:fit_body/Utils/constants/exports.dart';

class Reminders extends StatelessWidget {
  const Reminders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        20.heightBox,
        Text('Today',
            style: MTextStyles.mNormalStyle(
                fontSize: 12.sp, color: MColors.yellowishColor)),
        6.heightBox,
        const NotificationShowing(
            notificationTitle: 'New Workout Is Available',
            notificationSubTitle: 'June 10 - 10:00 AM'),
        16.heightBox,
        const NotificationShowing(
            notificationTitle: "Don't forget to drink water",
            leadingContainerColor: MColors.yellowishColor,
            leadingContainerIcon: Icons.light_rounded,
            iconColor: MColors.balckColor,
            notificationSubTitle: 'June 11 - 12:00 PM'),
        20.heightBox,
        Text('Yesterday',
            style: MTextStyles.mNormalStyle(
                fontSize: 12.sp, color: MColors.yellowishColor)),
        6.heightBox,
        const NotificationShowing(
            notificationSubTitle: "June 9 - 10:00 AM",
            notificationTitle: "Upper Body Workout Completed"),
        16.heightBox,
        const NotificationShowing(
            notificationSubTitle: "June 8 - 4:00 PM",
            notificationTitle: "Remember Your Exercise Session",
            leadingContainerIcon: Icons.edit_document),
        16.heightBox,
        const NotificationShowing(
            notificationSubTitle: "June 2 - 10:00 AM",
            notificationTitle: "New Article And Tips Posted",
            leadingContainerIcon: Iconsax.document_1_copy),
        20.heightBox,
        Text('May 29 2020',
            style: MTextStyles.mNormalStyle(
                fontSize: 12.sp, color: MColors.yellowishColor)),
        6.heightBox,
        const NotificationShowing(
            notificationTitle: "You started a new challenge",
            leadingContainerColor: MColors.yellowishColor,
            leadingContainerIcon: Icons.light_rounded,
            iconColor: MColors.balckColor,
            notificationSubTitle: 'June 11 - 12:00 PM'),
      ],
    );
  }
}
