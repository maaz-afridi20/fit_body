import '../../../../../../Utils/constants/exports.dart';

class MealQuestionAskingWidgetWithRadioBtns extends StatelessWidget {
  const MealQuestionAskingWidgetWithRadioBtns({
    super.key,
    required this.questionTopicHeading,
    required this.questionChoices,
    required this.askingQuestion,
    // required this.controllerTag
  });

  final String questionTopicHeading;
  final String askingQuestion;
  final List<Widget> questionChoices;
  // final String controllerTag;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        MHelperFunctions.mHeightBox(20),
        Text(questionTopicHeading,
            style: MTextStyles.mHeadingStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: MColors.yellowishColor)),
        MHelperFunctions.mHeightBox(17),
        Text(askingQuestion, style: MTextStyles.mNormalStyle()),
        MHelperFunctions.mHeightBox(8),
        Wrap(children: questionChoices)
      ],
    );
  }
}
