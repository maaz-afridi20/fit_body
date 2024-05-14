import 'package:fit_body/Utils/constants/exports.dart';

class GoalSelectorForm extends StatelessWidget {
  const GoalSelectorForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ResizableContainer(
        applyWidgetPadding: EdgeInsets.symmetric(horizontal: 33.w),
        widgets: [
          MHelperFunctions.giveHeight(40.h),
          const MSelectGoalRadioBtn(
              titleOfBtn: "Loose Wight", valueOfSelectedRadio: "Loose Wight"),
          MHelperFunctions.giveHeight(20.h),
          const MSelectGoalRadioBtn(
              titleOfBtn: "Gain Wight", valueOfSelectedRadio: "Gain Wight"),
          MHelperFunctions.giveHeight(20.h),
          const MSelectGoalRadioBtn(
              titleOfBtn: "Muscles Mass Gain",
              valueOfSelectedRadio: "Muscle Mass Gain"),
          MHelperFunctions.giveHeight(20.h),
          const MSelectGoalRadioBtn(
              titleOfBtn: "Shape Body", valueOfSelectedRadio: "ShapeBody"),
          MHelperFunctions.giveHeight(20.h),
          const MSelectGoalRadioBtn(
              titleOfBtn: "Others", valueOfSelectedRadio: "Others"),
          MHelperFunctions.giveHeight(40.h),
        ]);
  }
}
