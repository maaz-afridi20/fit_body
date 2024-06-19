import 'package:fit_body/Features/gym/screens/workout_row_screens/nutritions/meal_plans/meal_plan_c.dart';
import 'package:fit_body/Utils/constants/exports.dart';

class MealPlansB extends StatelessWidget {
  const MealPlansB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppbar(showActionWidget: true, appbarTitle: "Meal Plans"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MealQuestionAskingWidgetWithRadioBtns(
              questionTopicHeading: "Dietry Preferences",
              askingQuestion: "What are your dietary preferences",
              controllerTag: "dietryPreferences",
              questionChoices: [
                SettingMealPlanQuestions(
                    titleOfBtn: "Vegetarian",
                    valueOfRadio: 'Vegetarian',
                    controllerTag: "dietryPreferences"),
                SettingMealPlanQuestions(
                    titleOfBtn: "Gluten-Free",
                    valueOfRadio: 'Gluten-Free',
                    controllerTag: "dietryPreferences"),
                SettingMealPlanQuestions(
                    titleOfBtn: "Pulaao",
                    valueOfRadio: 'Pulaao',
                    controllerTag: "dietryPreferences"),
                SettingMealPlanQuestions(
                    titleOfBtn: "Keto",
                    valueOfRadio: 'Keto',
                    controllerTag: "dietryPreferences"),
                SettingMealPlanQuestions(
                    titleOfBtn: "No Preference",
                    valueOfRadio: 'No Preference',
                    controllerTag: "dietryPreferences")
              ]),
          40.heightBox,
          const MealQuestionAskingWidgetWithRadioBtns(
              questionTopicHeading: "Allergies",
              controllerTag: "Allergies",
              askingQuestion:
                  "do you have any food allergies we should know about?",
              questionChoices: [
                SettingMealPlanQuestions(
                    titleOfBtn: "Nuts",
                    valueOfRadio: 'Nuts',
                    controllerTag: "Allergies"),
                SettingMealPlanQuestions(
                    titleOfBtn: "Dairy",
                    valueOfRadio: 'Dairy',
                    controllerTag: "Allergies"),
                SettingMealPlanQuestions(
                  titleOfBtn: "Eggs",
                  valueOfRadio: 'Eggs',
                  controllerTag: "Allergies",
                ),
                SettingMealPlanQuestions(
                    titleOfBtn: "ShellFish",
                    valueOfRadio: 'ShellFish',
                    controllerTag: "Allergies"),
                SettingMealPlanQuestions(
                    titleOfBtn: "No Allergies",
                    valueOfRadio: 'No Allergies',
                    controllerTag: "Allergies")
              ]),
          40.heightBox,
          const MealQuestionAskingWidgetWithRadioBtns(
              questionTopicHeading: "Meal Types",
              controllerTag: "meal types",
              askingQuestion: "Which meal do you want to plan?",
              questionChoices: [
                SettingMealPlanQuestions(
                    titleOfBtn: "Dinner",
                    valueOfRadio: 'Dinner',
                    controllerTag: "meal types"),
                SettingMealPlanQuestions(
                    titleOfBtn: "Lunch",
                    valueOfRadio: 'Lunch',
                    controllerTag: "meal types"),
                SettingMealPlanQuestions(
                    titleOfBtn: "Snack",
                    valueOfRadio: 'Snack',
                    controllerTag: "meal types"),
                SettingMealPlanQuestions(
                    titleOfBtn: "BreakFast",
                    valueOfRadio: 'BreakFast',
                    controllerTag: "meal types")
              ]),
          25.heightBox,
          MCircularContainer(
            titleText: "Next",
            heightOfContainer: 32.h,
            widthOfContainer: 160.w,
            onPress: () => Get.to(() => const MealPlanC()),
          ),
          20.heightBox,
        ],
      ).wrapWithSingleChildScrollView().px32(),
    );
  }
}
