import 'package:fit_body/Utils/constants/exports.dart';

class SetupGoalController extends GetxController {
  final RxString selectedValue = 'none'.obs;
}

// class MealPlansQuestioningContoler extends GetxController {}

// class BreakfastPlanController extends GetxController {
//   final RxString selectedValue = ''.obs;
// }

class RadioBtnControllers extends GetxController {
  static RadioBtnControllers get instance => Get.find<RadioBtnControllers>();
  final RxString mealPlanQuestionSelectedValue = ''.obs;
  final RxString breakfastPlanSelectedValue = ''.obs;
}
