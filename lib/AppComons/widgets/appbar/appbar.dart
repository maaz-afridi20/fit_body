import 'package:fit_body/Utils/constants/exports.dart';

class MAppbar extends StatelessWidget {
  const MAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: GestureDetector(
          onTap: () => MHelperFunctions.navigateBack(context),
          child: Icon(Icons.arrow_back_ios,
              size: 15.sp, color: MColors.yellowishColor)),
      title: Text("Back",
          style: MTextStyles.mNormalStyle(
              fontSize: 15, color: MColors.yellowishColor)),
    );
  }

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
