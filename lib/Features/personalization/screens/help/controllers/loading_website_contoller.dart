import 'package:fit_body/Utils/constants/exports.dart';

class LoadingWebsiteContoller extends GetxController {
  final RxBool isLoading = false.obs;

  final List<Map<String, dynamic>> listTileData = [
    {'text': 'Customer Service', 'icon': Iconsax.user},
    {'text': 'Website', 'icon': Icons.web},
    {'text': 'Whatsapp', 'icon': Iconsax.whatsapp},
    {'text': 'Facebook', 'icon': Iconsax.facebook},
    {'text': 'Instagram', 'icon': Iconsax.instagram},
  ];

  void handleOnTap(BuildContext context, String title) async {
    isLoading.value = false;
    try {
      switch (title) {
        case "Customer Service":
          MHelperFunctions.navigateTo(context, const CustomerService());
          break;

        case "Website":
          MHelperFunctions.launchUlr('https://flutter.dev/');
          break;

        case "Whatsapp":
          MHelperFunctions.launchUlr('https://www.whatsapp.com/');
          break;

        case "Facebook":
          MHelperFunctions.launchUlr('https://web.facebook.com/');
          break;

        case "Instagram":
          await MHelperFunctions.launchUlr('https://help.instagram.com/');
          break;
      }
    } catch (e) {
      debugPrint('Error While Launching $e');
    } finally {
      isLoading.value = false;
    }
  }
}
