import 'package:fit_body/Utils/constants/exports.dart';

class GeneralChoiceChip extends StatelessWidget {
  const GeneralChoiceChip(
      {super.key, this.backgroundColor, required this.chipTitle, this.onPress});

  final Color? backgroundColor;
  final String chipTitle;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HelpChipController());
    return Obx(() {
      // final isSelected = controller.selectedChip.value == chipTitle;
      final isSelected = controller.selectedChips.contains(chipTitle);
      return MCircularContainer(
        onPress: () {
          controller.toggleSelectedChips(chipTitle);
        },
        titleText: chipTitle,
        heightOfContainer: 30.h,
        widthOfContainer: MHelperFunctions.screenWidth(),
        backgroundColor: isSelected ? MColors.yellowishColor : Colors.white,
        textFontsize: 14.sp,
        textcolor: isSelected ? MColors.balckColor : MColors.purpleColor,
      );
    });
  }
}
