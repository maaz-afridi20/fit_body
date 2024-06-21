import 'package:fit_body/Utils/constants/exports.dart';

class MProgressListile extends StatelessWidget {
  const MProgressListile({
    super.key,
    required this.duration,
    required this.title,
    required this.subtitle,
    required this.time,
  });

  final String duration;
  final String title;
  final String subtitle;
  final String time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Row(children: [
          const Icon(Icons.fire_extinguisher, size: 9),
          Text(title)
        ]),
        titleTextStyle: MTextStyles.mNormalStyle(
            fontSize: 12.sp, color: MColors.listileBlackColor),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subtitle),
            Text(time,
                style: MTextStyles.mNormalStyle(
                    fontSize: 12.sp, color: MColors.purpleColor))
          ],
        ).paddingAll(0),
        subtitleTextStyle: MTextStyles.mNormalStyle(
            fontSize: 13.sp,
            color: MColors.balckColor,
            fontWeight: FontWeight.w600),
        tileColor: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.r)),
        leading: CircleAvatar(
            backgroundColor: MColors.darkPurpleColor,
            child: getImageWidget('assets/logos/workoutwhite.png')),
        trailing: Row(mainAxisSize: MainAxisSize.min, children: [
          const Icon(Iconsax.timer_1_copy, size: 15),
          9.widthBox,
          Text(duration,
              style: MTextStyles.mNormalStyle(
                  color: MColors.darkPurpleColor, fontWeight: FontWeight.w600))
        ]));
  }
}
