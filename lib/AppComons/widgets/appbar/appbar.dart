import 'package:fit_body/Utils/constants/exports.dart';

class MAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MAppbar(
      {super.key,
      this.appbarTitle,
      this.centerTitle = false,
      required this.showActionWidget,
      this.onSearchIconTapped,
      this.onNotificationIconTapped,
      this.onPersonIconTapped,
      this.leadingWidget,
      this.showLeadingWidget = true,
      this.bottom,
      this.titleFontsize,
      this.titleColor});

  final String? appbarTitle;
  final bool centerTitle;
  final Function()? onSearchIconTapped;
  final Function()? onNotificationIconTapped;
  final Function()? onPersonIconTapped;
  final bool showActionWidget;
  final Widget? leadingWidget;
  final bool showLeadingWidget;
  final double? titleFontsize;
  final Color? titleColor;

  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MColors.homeContainerBlackClr,
      centerTitle: centerTitle,
      leading: showLeadingWidget
          ? GestureDetector(
              onTap: () => MHelperFunctions.navigateBack(context),
              child: Icon(Icons.arrow_back_ios_new_outlined,
                  size: 15.sp, color: MColors.yellowishColor))
          : leadingWidget,
      title: Text(appbarTitle ?? "Back", textAlign: TextAlign.left),
      titleTextStyle: MTextStyles.mHeadingStyle(
          fontSize: titleFontsize ?? 20.sp,
          color: titleColor ?? MColors.darkPurpleColor),
      actions: showActionWidget == true
          ? [
              Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: onSearchIconTapped,
                        child: const Icon(Icons.search,
                            color: MColors.darkPurpleColor)),
                    MHelperFunctions.mWidthBox(20),
                    GestureDetector(
                      onTap: onNotificationIconTapped,
                      child: const Icon(Icons.notifications,
                          color: MColors.darkPurpleColor),
                    ),
                    MHelperFunctions.mWidthBox(20),
                    GestureDetector(
                        onTap: onPersonIconTapped,
                        child: const Icon(Icons.person_rounded,
                            color: MColors.darkPurpleColor))
                  ]).pOnly(right: 30.w),
            ]
          : null,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


  // bottom: showBottomWidget == true
  //           ? PreferredSize(
  //               preferredSize: const Size.fromHeight(kToolbarHeight),
  //               child: Align(
  //                   alignment: Alignment.bottomLeft,
  //                   child: Text(MTextString.chellengeyourlimit,
  //                           style: MTextStyles.mNormalStyle())
  //                       .pOnly(left: 16.w)))
  //           : null