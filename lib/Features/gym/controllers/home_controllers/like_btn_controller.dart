import 'package:fit_body/Utils/constants/exports.dart';

class LikeBtnController extends GetxController {
  static LikeBtnController get instance => Get.find();
  var favouriteStates = <String, bool>{}.obs;

  @override
  void onInit() {
    loadAllFavouriteStates();
    super.onInit();
  }

  void toggleFavourite(String id) async {
    bool newState = !(favouriteStates[id] ?? false);
    favouriteStates[id] = newState;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(id, newState);

    if (newState) {
      MHelperFunctions.showSnackBar("added to favourites");
    } else {
      MHelperFunctions.showSnackBar("removed to favourites");
    }
  }

  void loadAllFavouriteStates() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getKeys().forEach((key) {
      favouriteStates[key] = prefs.getBool(key) ?? false;
    });
  }
}
