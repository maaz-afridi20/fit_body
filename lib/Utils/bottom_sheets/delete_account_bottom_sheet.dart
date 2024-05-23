import 'package:fit_body/Utils/constants/exports.dart';

class LogoutBottomNavSheet extends StatelessWidget {
  const LogoutBottomNavSheet(
      {super.key,
      required this.confirmText,
      required this.cancelText,
      required this.confirmationText});

  final String confirmText;
  final String cancelText;
  final String confirmationText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: MColors.darkPurpleColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(31.r), topRight: Radius.circular(31.r))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(confirmationText,
              textAlign: TextAlign.center, style: MTextStyles.mHeadingStyle()),
          40.heightBox,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: MCircularContainer(
                  titleText: cancelText,
                  textFontsize: 20,
                  textcolor: MColors.purpleColor,
                  heightOfContainer: 35.h,
                  onPress: () => Get.back(),
                ),
              ),
              15.widthBox,
              Expanded(
                child: MCircularContainer(
                  titleText: confirmText,
                  heightOfContainer: 35.h,
                  textFontsize: 20,
                  backgroundColor: MColors.yellowishColor,
                  textcolor: MColors.balckColor,
                ),
              ),
            ],
          ).px(35.w),
        ],
      ),
    );
  }
}
