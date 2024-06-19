import '../../../../../../Utils/constants/exports.dart';

class SettingMealPlanQuestions extends StatelessWidget {
  const SettingMealPlanQuestions(
      {super.key,
      required this.titleOfBtn,
      required this.valueOfRadio,
      required this.controllerTag});
  final String valueOfRadio;
  final String titleOfBtn;
  final String controllerTag;
  @override
  Widget build(BuildContext context) {
    final controller =
        Get.put(MealPlansQuestioningContoler(), tag: controllerTag);
    return Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio(
                  value: valueOfRadio,
                  groupValue: controller.seletedValue.value,
                  onChanged: (value) => controller.seletedValue.value = value!,
                  activeColor: MColors.yellowishColor),
              5.widthBox,
              titleOfBtn.text.white.size(14).make()
            ]));
  }
}
