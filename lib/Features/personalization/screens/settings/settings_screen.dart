import '../../../../Utils/constants/exports.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppbar(appbarTitle: "Settings"),
      body: Column(
        children: <Widget>[
          ProfileListile(
              tileIcon: Iconsax.notification,
              tileText: "Notification Settings",
              onTap: () => MHelperFunctions.navigateTo(
                  context, const NotificationSettings())),
          ProfileListile(
              tileIcon: Icons.key_sharp,
              tileText: "Password Settings",
              onTap: () => MHelperFunctions.navigateTo(
                  context, const PasswordSettingsScreen())),
          ProfileListile(
              tileIcon: Iconsax.user,
              tileText: "Delete Account",
              onTap: () => showModalBottomSheet(
                    context: context,
                    builder: (context) => const LogoutBottomNavSheet(
                        confirmText: "Confirm",
                        cancelText: "Cancel",
                        confirmationText:
                            "Are you sure to fully delete your account"),
                  ))
        ],
      ),
    );
  }
}
