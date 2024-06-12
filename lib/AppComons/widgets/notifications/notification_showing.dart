import '../../../Utils/constants/exports.dart';

class NotificationShowing extends StatelessWidget {
  const NotificationShowing(
      {super.key,
      required this.notificationSubTitle,
      required this.notificationTitle,
      this.leadingContainerIcon,
      this.actionText,
      this.iconColor,
      this.onPlayIconTapped,
      this.leadingContainerColor});

  final String notificationTitle;
  final String notificationSubTitle;
  final Color? leadingContainerColor;
  final IconData? leadingContainerIcon;
  final Color? iconColor;
  final String? actionText;
  final Function()? onPlayIconTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36.r), color: Colors.white),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: onPlayIconTapped,
            child: Container(
                height: 48.h,
                width: 48.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: leadingContainerColor ?? MColors.purpleColor),
                child: Icon(leadingContainerIcon ?? Icons.star_rate_rounded,
                    color: iconColor ?? Colors.white)),
          ),
          6.widthBox,
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(notificationTitle,
                    style: MTextStyles.mNormalStyle(
                        fontSize: 13,
                        color: MColors.balckColor,
                        fontWeight: FontWeight.w500)),
                Text(notificationSubTitle,
                    style: MTextStyles.mNormalStyle(
                        fontSize: 12,
                        color: MColors.purpleColor,
                        fontWeight: FontWeight.w500))
              ]),
          const Spacer(),
          if (actionText.isNotEmptyAndNotNull)
            Text(actionText!,
                style: MTextStyles.mNormalStyle(
                    fontWeight: FontWeight.w500,
                    color: MColors.darkPurpleColor)),
          8.widthBox
        ],
      ).px(10.w),
    );
  }
}
