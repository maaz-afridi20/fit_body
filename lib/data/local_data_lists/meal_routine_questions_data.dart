import 'package:fit_body/data/models/meal_routine_questions_model.dart';

final List<Question> mealPlanCQuestions = [
  Question(
      choices: [
        Choices(
            value: "less than 1500 calories", title: "less than 1500 calories"),
        Choices(value: "1500-2000 calories", title: "less than 1500 calories"),
        Choices(
            value: "More than 2000 calories", title: "less than 1500 calories"),
        Choices(
            value: "Not sure/don't have a goal",
            title: "less than 1500 calories")
      ],
      controllerTag: "chaloricgoal",
      question: "What is your daily caloric intake goal?",
      topic: "Caloric Goal"),
  Question(
      topic: "Cooking Time Preference",
      question: "How much time are you willing to spend cooking each meal?",
      controllerTag: "cookingtime",
      choices: [
        Choices(title: "less than 15 minutes", value: 'less than 15 minutes'),
        Choices(title: "15 to 30 minutes", value: '15 to 30 minutes'),
        Choices(title: "More than 30 minutes", value: 'More than 30 minutes')
      ]),
  Question(
      topic: "Number Of Servings",
      question: "How many servings do you need per meal?",
      controllerTag: "servings",
      choices: [
        Choices(title: "1", value: '1'),
        Choices(title: "2", value: '2'),
        Choices(title: "3-4", value: '3-4'),
        Choices(title: "More than 4", value: 'More than 4')
      ])
];

final List<Question> mealPlanBQuestions = [
  Question(
      choices: [
        Choices(value: "Vegetarian", title: "Vegetarian"),
        Choices(value: "Keto", title: "Keto"),
        Choices(value: "Vegan", title: "Vegan"),
        Choices(value: "Pulaao", title: "Pulaao"),
        Choices(value: "Gluten-Free", title: "Gluten-Free"),
        Choices(value: "No Preferences", title: "No Preferences")
      ],
      controllerTag: "dietaryPreference",
      question: "what are your dietary preferences?",
      topic: "Dietary Preferences"),
  Question(
      choices: [
        Choices(value: "Nuts", title: "Nuts"),
        Choices(value: "Dairy", title: "Dairy"),
        Choices(value: "Shellfish", title: "Shellfish"),
        Choices(value: "Eggs", title: "Eggs"),
        Choices(value: "No Allergies", title: "No Allergies")
      ],
      controllerTag: "allergies",
      question: "Do you have any food allergies we should know about?",
      topic: "Allergies"),
  Question(
      choices: [
        Choices(value: "BreakFast", title: "BreakFast"),
        Choices(value: "Dinner", title: "Dinner"),
        Choices(value: "Lunch", title: "Lunch"),
        Choices(value: "Snacks", title: "Snacks")
      ],
      controllerTag: "mealtypes",
      question: "Which meal do you want to plan?",
      topic: "Meal Types")
];
