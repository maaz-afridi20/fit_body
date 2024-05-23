import '../../../Utils/constants/exports.dart';

class NotificationListile extends StatelessWidget {
  const NotificationListile(
      {super.key,
      required this.notificationSubTitle,
      required this.notificationTitle,
      this.leadingContainerIcon,
      this.iconColor,
      this.leadingContainerColor});

  final String notificationTitle;
  final String notificationSubTitle;
  final Color? leadingContainerColor;
  final IconData? leadingContainerIcon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36.r), color: Colors.white),
      child: Row(
        children: [
          Container(
              height: 48.h,
              width: 48.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: leadingContainerColor ?? MColors.purpleColor),
              child: Icon(leadingContainerIcon ?? Icons.star_rate_rounded,
                  color: iconColor ?? Colors.white)),
          6.widthBox,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(notificationTitle,
                  style: MTextStyles.mNormalStyle(
                      fontSize: 13, color: MColors.balckColor)),
              Text(notificationSubTitle,
                  style: MTextStyles.mNormalStyle(
                      fontSize: 12, color: MColors.purpleColor)),
            ],
          ),
        ],
      ).px(10.w),
    );
  }
}
