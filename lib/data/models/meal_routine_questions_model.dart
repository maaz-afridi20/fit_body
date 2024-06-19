class Question {
  final String topic;
  final String question;
  final String controllerTag;
  final List<Choices> choices;

  Question(
      {required this.choices,
      required this.controllerTag,
      required this.question,
      required this.topic});
}

class Choices {
  final String value;
  final String title;
  Choices({required this.value, required this.title});
}
