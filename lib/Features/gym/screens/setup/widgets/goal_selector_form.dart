import 'package:fit_body/Utils/constants/exports.dart';

class GoalSelectorForm extends StatelessWidget {
  const GoalSelectorForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ResizableContainer(
        applyWidgetPadding: EdgeInsets.symmetric(horizontal: 33.w),
        widgets: [
          MHelperFunctions.mHeightBox(40),
          const MSelectGoalRadioBtn(
              titleOfBtn: "Loose Wight", valueOfSelectedRadio: "Loose Wight"),
          MHelperFunctions.mHeightBox(20),
          const MSelectGoalRadioBtn(
              titleOfBtn: "Gain Wight", valueOfSelectedRadio: "Gain Wight"),
          MHelperFunctions.mHeightBox(20),
          const MSelectGoalRadioBtn(
              titleOfBtn: "Muscles Mass Gain",
              valueOfSelectedRadio: "Muscle Mass Gain"),
          MHelperFunctions.mHeightBox(20),
          const MSelectGoalRadioBtn(
              titleOfBtn: "Shape Body", valueOfSelectedRadio: "ShapeBody"),
          MHelperFunctions.mHeightBox(20),
          const MSelectGoalRadioBtn(
              titleOfBtn: "Others", valueOfSelectedRadio: "Others"),
          MHelperFunctions.mHeightBox(40)
        ]);
  }
}
