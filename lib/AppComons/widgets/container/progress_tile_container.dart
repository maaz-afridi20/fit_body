import 'package:fit_body/Utils/constants/exports.dart';

class MProgressTileContainer extends StatelessWidget {
  const MProgressTileContainer({
    super.key,
    required this.day,
    required this.date,
    required this.steps,
    required this.duration,
  });

  final String day;
  final String date;
  final String steps;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: MColors.darkPurpleColor),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(day,
                            style: MTextStyles.mNormalStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.w500)),
                        Text(date,
                            style: MTextStyles.mHeadingStyle(
                                fontSize: 25.sp, fontWeight: FontWeight.w500))
                      ]).py(2),
                  StraightVerticleLine(height: 41.h, width: 1),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Steps',
                            style: MTextStyles.mNormalStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.w500)),
                        Text(steps,
                            style: MTextStyles.mHeadingStyle(
                                fontSize: 25.sp, fontWeight: FontWeight.w500))
                      ]).py(2),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Duration',
                            style: MTextStyles.mNormalStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.w500)),
                        Text(duration,
                            style: MTextStyles.mNormalStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w600))
                      ]).py(6)
                ]).px(23.w))
        .pOnly(bottom: 35.h);
  }
}
