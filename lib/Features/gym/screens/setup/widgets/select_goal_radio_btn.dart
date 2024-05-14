import '../../../../../Utils/constants/exports.dart';

class MSelectGoalRadioBtn extends StatelessWidget {
  const MSelectGoalRadioBtn(
      {super.key,
      required this.titleOfBtn,
      required this.valueOfSelectedRadio});

  final String valueOfSelectedRadio;
  final String titleOfBtn;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SetupGoalController());
    return Obx(() => RadioMenuButton(
        value: valueOfSelectedRadio,
        groupValue: controller.selectedValue.value,
        onChanged: (selectedRadio) {
          controller.selectedValue.value = selectedRadio!;
        },
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.r))),
            backgroundColor: const MaterialStatePropertyAll(Colors.white)),
        child: Text(titleOfBtn,
            style: MTextStyles.mNormalStyle(
                fontSize: 18.sp, color: MColors.balckColor))));
  }
}
