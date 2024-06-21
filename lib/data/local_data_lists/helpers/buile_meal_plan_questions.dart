import 'package:fit_body/Utils/constants/exports.dart';
import 'package:fit_body/data/models/meal_routine_questions_model.dart';

List<Widget> buildQuestionsOfMealPlanC(List<Question> question) {
  return question.map((e) {
    return MealQuestionAskingWidgetWithRadioBtns(
        questionTopicHeading: e.topic,
        askingQuestion: e.question,
        // controllerTag: e.controllerTag,
        questionChoices: e.choices.map((choice) {
          return SettingMealPlanQuestions(
              titleOfBtn: choice.title,
              valueOfRadio: choice.value,
              controllerTag: e.controllerTag);
        }).toList());
  }).toList();
}

List<Widget> buildQuestionsOfMealPlanB(List<Question> question) {
  return question.map((e) {
    return MealQuestionAskingWidgetWithRadioBtns(
      questionTopicHeading: e.topic,
      askingQuestion: e.question,
      // controllerTag: e.controllerTag,
      questionChoices: e.choices
          .map((choice) => SettingMealPlanQuestions(
              titleOfBtn: choice.title,
              valueOfRadio: choice.value,
              controllerTag: e.controllerTag))
          .toList(),
    );
  }).toList();
}

List<Widget> buildQuestionForBreakfastPlan(
    List<BreakfastPlan> breakfastQuestions) {
  return breakfastQuestions
      .map((e) => Row(mainAxisSize: MainAxisSize.min, children: [
            Radio(value: "", groupValue: "this", onChanged: (newValue) {}),
            FavouritesScreenContainer(
                    mainTitle: e.title,
                    subTitle: [Text(e.time), Text(e.calories)],
                    imageString: e.imageUrl)
                .py12()
                .wrapWithExpanded()
          ]))
      .toList();
}
