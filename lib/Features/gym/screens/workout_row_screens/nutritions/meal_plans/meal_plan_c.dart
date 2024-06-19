import 'package:fit_body/Utils/constants/exports.dart';

class MealPlanC extends StatelessWidget {
  const MealPlanC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppbar(showActionWidget: true, appbarTitle: "Meal Plans"),
      body: Column(
        children: <Widget>[
          const MealQuestionAskingWidgetWithRadioBtns(
              questionTopicHeading: "Caloric Goal",
              askingQuestion: "What is your daily caloric intake goal?",
              controllerTag: "caloricgoal",
              questionChoices: [
                SettingMealPlanQuestions(
                    titleOfBtn: "less than 1500 calories",
                    valueOfRadio: 'less than 1500 calories',
                    controllerTag: "caloricgoal"),
                SettingMealPlanQuestions(
                    titleOfBtn: "1500-2000 calories",
                    valueOfRadio: '1500-2000 calories',
                    controllerTag: "caloricgoal"),
                SettingMealPlanQuestions(
                    titleOfBtn: "More than 2000 calories",
                    valueOfRadio: 'More than 2000 calories',
                    controllerTag: "caloricgoal"),
                SettingMealPlanQuestions(
                    titleOfBtn: "Not sure don't have a goal",
                    valueOfRadio: "Not sure don't have a goal",
                    controllerTag: "caloricgoal")
              ]),
          40.heightBox,
          const MealQuestionAskingWidgetWithRadioBtns(
              questionTopicHeading: "Cooking Time Preference",
              askingQuestion:
                  "How much time are you willing to spend cooking each meal?",
              controllerTag: "cookingtime",
              questionChoices: [
                SettingMealPlanQuestions(
                    titleOfBtn: "less than 15 minutes",
                    valueOfRadio: 'less than 15 minutes',
                    controllerTag: "cookingtime"),
                SettingMealPlanQuestions(
                    titleOfBtn: "15 to 30 minutes",
                    valueOfRadio: '15 to 30 minutes',
                    controllerTag: "cookingtime"),
                SettingMealPlanQuestions(
                    titleOfBtn: "More than 30 minutes",
                    valueOfRadio: 'More than 30 minutes',
                    controllerTag: "cookingtime")
              ]),
          40.heightBox,
          const MealQuestionAskingWidgetWithRadioBtns(
              questionTopicHeading: "Number Of Servings",
              askingQuestion: "How many servings do you need per meal?",
              controllerTag: "servings",
              questionChoices: [
                SettingMealPlanQuestions(
                    titleOfBtn: "1",
                    valueOfRadio: '1',
                    controllerTag: "servings"),
                SettingMealPlanQuestions(
                    titleOfBtn: "2",
                    valueOfRadio: '2',
                    controllerTag: "servings"),
                SettingMealPlanQuestions(
                    titleOfBtn: "3-4",
                    valueOfRadio: '3-4',
                    controllerTag: "servings"),
                SettingMealPlanQuestions(
                    titleOfBtn: "More than 4",
                    valueOfRadio: 'More than 4',
                    controllerTag: "servings")
              ]),
        ],
      ).wrapWithSingleChildScrollView().px32(),
    );
  }
}
