import 'package:fit_body/Utils/constants/exports.dart';

class ProfileTileIconList extends StatelessWidget {
  const ProfileTileIconList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ProfileListile(
            tileIcon: Icons.person_rounded,
            tileText: "Profile",
            onTap: () => MHelperFunctions.navigateTo(
                context, const EditProfileScreen())),
        const ProfileListile(
            tileIcon: Icons.star_rounded, tileText: "Favourite"),
        const ProfileListile(
            tileIcon: Icons.lock_outline, tileText: "Privacy Policy"),
        ProfileListile(
            tileIcon: Icons.settings,
            tileText: "Settings",
            onTap: () =>
                MHelperFunctions.navigateTo(context, const SettingsScreen())),
        ProfileListile(
            tileIcon: Icons.description_sharp,
            tileText: "Help",
            onTap: () =>
                MHelperFunctions.navigateTo(context, const HelpScreen())),
        ProfileListile(
          tileIcon: Icons.logout,
          tileText: "LogOut",
          onTap: () => showModalBottomSheet(
            context: context,
            builder: (context) => const LogoutBottomNavSheet(),
          ),
        ),
      ],
    );
  }
}

class ProfileListile extends StatelessWidget {
  const ProfileListile(
      {super.key, required this.tileIcon, required this.tileText, this.onTap});

  final String tileText;
  final IconData tileIcon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onTap,
        leading: Container(
          height: 40.h,
          width: 40,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: MColors.darkPurpleColor),
          child: Icon(tileIcon, color: Colors.white),
        ),
        title: Text(tileText,
            style: MTextStyles.mHeadingStyle(fontWeight: FontWeight.normal)),
        trailing: Icon(Icons.play_arrow_rounded,
            size: 15.sp, color: MColors.yellowishColor));
  }
}
