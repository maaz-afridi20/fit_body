import 'package:fit_body/Utils/constants/exports.dart';

class MAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MAppbar(
      {super.key,
      this.appbarTitle,
      this.centerTitle,
      required this.showActionWidget,
      this.onSearchIconTapped,
      this.onNotificationIconTapped,
      this.onPersonIconTapped,
      this.showLeading,
      this.showBottomWidget,
      this.titleFontsize,
      this.titleColor});

  final String? appbarTitle;
  final bool? centerTitle;
  // final List<Widget>? action;
  final Function()? onSearchIconTapped;
  final Function()? onNotificationIconTapped;
  final Function()? onPersonIconTapped;
  final bool showActionWidget;
  final Widget? showLeading;
  final double? titleFontsize;
  final Color? titleColor;
  final bool? showBottomWidget;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: MColors.homeContainerBlackClr,
        centerTitle: centerTitle,
        leading: showLeading ??
            GestureDetector(
                onTap: () => MHelperFunctions.navigateBack(context),
                child: Icon(Icons.arrow_back_ios,
                    size: 15.sp, color: MColors.yellowishColor)),
        title: Text(appbarTitle ?? "Back",
            style: MTextStyles.mHeadingStyle(
                fontSize: titleFontsize ?? 20.sp,
                color: titleColor ?? MColors.darkPurpleColor)),
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
                      MHelperFunctions.giveWidth(20.w),
                      GestureDetector(
                        onTap: onNotificationIconTapped,
                        child: const Icon(Icons.notifications,
                            color: MColors.darkPurpleColor),
                      ),
                      MHelperFunctions.giveWidth(20.w),
                      GestureDetector(
                          onTap: onPersonIconTapped,
                          child: const Icon(Icons.person_rounded,
                              color: MColors.darkPurpleColor))
                    ]),
              ]
            : null,
        bottom: showBottomWidget == true
            ? PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(MTextString.chellengeyourlimit,
                            style: MTextStyles.mNormalStyle())
                        .px(16.w)))
            : null);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
