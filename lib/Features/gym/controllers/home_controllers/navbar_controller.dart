import 'package:fit_body/Utils/constants/exports.dart';

class NavbarController extends GetxController {
  final RxInt currentIndex = 0.obs;

  void changeIndex(index) {
    currentIndex.value = index;
  }

  List<Widget> screenList = const [
    HomeNavBar(),
    NavbarWorkoutVideosScreen(),
    AllFavouritesScreen(),
    MainProfileScreen(),
  ];
}
