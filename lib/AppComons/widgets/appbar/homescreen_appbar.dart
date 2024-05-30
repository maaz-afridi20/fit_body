import 'package:fit_body/Utils/constants/exports.dart';

class HomeScreenAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 50.h, left: 25.w, right: 25.w),
        child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            title: Text('Hi, Madison',
                style:
                    MTextStyles.mHeadingStyle(color: MColors.darkPurpleColor)),
            actions: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () => Get.to(() => const HomeScreenAllSearch()),
                      child: const Icon(Icons.search,
                          color: MColors.darkPurpleColor)),
                  MHelperFunctions.giveWidth(20.w),
                  GestureDetector(
                    onTap: () => Get.to(() => const NotificationScreen()),
                    child: const Icon(Icons.notifications,
                        color: MColors.darkPurpleColor),
                  ),
                  MHelperFunctions.giveWidth(20.w),
                  const Icon(Icons.person_rounded,
                      color: MColors.darkPurpleColor),
                ],
              )
            ],
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    MTextString.chellengeyourlimit,
                    style: MTextStyles.mNormalStyle(),
                  ).px(16.w),
                ))),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
