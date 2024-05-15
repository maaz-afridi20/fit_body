import 'package:fit_body/Utils/constants/exports.dart';

class MAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MAppbar(
      {super.key,
      this.appbarTitle,
      this.centerTitle,
      this.action,
      this.showLeading,
      this.titleFontsize,
      this.titleColor});

  final String? appbarTitle;
  final bool? centerTitle;
  final List<Widget>? action;
  final Widget? showLeading;
  final double? titleFontsize;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: centerTitle,
      leading: showLeading ??
          GestureDetector(
              onTap: () => MHelperFunctions.navigateBack(context),
              child: Icon(Icons.arrow_back_ios,
                  size: 15.sp, color: MColors.yellowishColor)),
      title: Text(appbarTitle ?? "Back",
          style: MTextStyles.mHeadingStyle(
              fontSize: titleFontsize ?? 20,
              color: titleColor ?? MColors.darkPurpleColor)),
      actions: action,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


//  style: MTextStyles.mNormalStyle(
//               fontSize: 15, color: MColors.yellowishColor)