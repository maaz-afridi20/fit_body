import 'package:fit_body/Utils/constants/exports.dart';

class ProfileTileIconList extends StatelessWidget {
  const ProfileTileIconList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileListile(
            tileIcon: Icons.person_rounded,
            tileText: "Profile",
            onTap: () => const EditProfileScreen()),
        const ProfileListile(
            tileIcon: Icons.star_rounded, tileText: "Favourite"),
        const ProfileListile(
            tileIcon: Icons.lock_outline, tileText: "Privacy Policy"),
        const ProfileListile(tileIcon: Icons.settings, tileText: "Settings"),
        const ProfileListile(
            tileIcon: Icons.description_sharp, tileText: "Help"),
        const ProfileListile(tileIcon: Icons.logout, tileText: "LogOut"),
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
              shape: BoxShape.circle, color: MColors.purpleColor),
          child: Icon(tileIcon, color: Colors.white),
        ),
        title: Text(tileText,
            style: MTextStyles.mHeadingStyle(fontWeight: FontWeight.normal)),
        trailing: Icon(Icons.play_arrow_rounded,
            size: 15.sp, color: MColors.yellowishColor));
  }
}
